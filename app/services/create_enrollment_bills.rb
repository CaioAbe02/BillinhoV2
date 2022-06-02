class CreateEnrollmentBills
  include UseCase

  attr_reader :enrollment, :bill_value, :dia_vencimento, :vencimento_bill

  def initialize(enrollment)
    @enrollment = enrollment
  end

  def perform
    define_bill_value
    define_dia_vencimento
    create_bills
  end

  private

  def define_bill_value
    @bill_value = enrollment[:full_value] / enrollment[:installments]
  end

  def define_dia_vencimento
    @dia_vencimento = enrollment[:due_day].to_i
  end

  def define_vencimento_bill(num_bill)
    @vencimento_bill = Date.today + num_bill.month

    if @dia_vencimento == 31
      @vencimento_bill.end_of_month
    elsif (@dia_vencimento == 30 || @dia_vencimento == 29) && @vencimento_bill.month == 2
      @vencimento_bill.end_of_month
    else
      @vencimento_bill.change(day: @dia_vencimento)
    end
  end

  def create_bills
    enrollment.installments.times do |i|
      Bill.create!(
        bill_value: @bill_value,
        due_date: define_vencimento_bill(i + 1),
        enrollment_id: enrollment.id,
        bill_status: 'Aberta'
      )
    end
  end
end
