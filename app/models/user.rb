class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :city
  after_create :send_welcome_email, :set_role

  enum role: [:user, :student, :teacher, :admin]
  def send_welcome_email
    UserNotifierMailer.welcome_user(self).deliver
  end

  def set_role
    self.user!
  end
end
