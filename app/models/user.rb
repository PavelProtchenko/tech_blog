class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_validation :set_name, on: :create
  before_validation :set_phone, on: :create

  private

  def set_name
    self.name = "Person#{rand(1000)}" if self.name.blank?
  end

  def set_phone
    self.phone = "No phone" if self.phone.blank?
  end
end
