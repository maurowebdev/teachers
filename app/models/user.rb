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
  #Definir el rol de usuario por defecto una vez es creado
  def set_role
    self.user!
  end
  #Definiendo imagen de perfil por defecto
  def avatar_url
    hash = Digest::MD5.hexdigest(email)
    "https://www.gravatar.com/avatar/#{hash}?s=32&d=retro"
  end
end
