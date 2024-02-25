class User < ApplicationRecord
  has_many :incomes, dependent: :destroy
  has_many :actial_expenses, dependent: :destroy
  has_many :planned_expenses, dependent: :destroy

  validates_presence_of :login
  validates_presence_of :password_digest

  has_secure_password
end
