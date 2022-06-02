class Student < ApplicationRecord
    has_many :enrollments
    validates :name, presence: true, uniqueness: true
    validates :cpf, numericality: { only_integer: true }, length: {is: 11}, uniqueness: true
    validates :birth_date, date: { allow_blank: true }
    validates :phone, numericality: { only_integer: true }, allow_blank: true
    validates :gender, inclusion: { in: %w[M F] }
    validates :bill_payment_type, inclusion: { in: %w[Boleto Cartão] }
  end
  