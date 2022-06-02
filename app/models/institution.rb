class Institution < ApplicationRecord
  has_many :enrollments
  validates :name, presence: true, uniqueness: true
  validates :cnpj, numericality: { only_integer: true }, length: {is: 14}, uniqueness: true
  validates :institution_type, inclusion: { in: %w[Universidade Escola Creche] }
end
