class Enrollment < ApplicationRecord
  after_create :create_bills

  belongs_to :institution
  belongs_to :student
  has_many :bills
  validates :full_value, numericality: { greater_than: 0 }
  validates :installments, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :due_day,
            numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 31 }
  validates :course_name, presence: true

  private

  def create_bills
    CreateEnrollmentBills.perform(self)
  end
end
