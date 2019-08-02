class ApplicationController < ActionController::Base
  #======CALLBACKS=========
  #Ejecute este código antes de las acciones definidas
  before_action :add_parameters_to_user, if: :devise_controller? #Generado por Devise?

  before_action :avatar
  before_action :large_avatar
  protected
    def add_parameters_to_user
      #Permitir acceso a ciudad y rol, ya que fueron agregados por fuera de Devise
      devise_parameter_sanitizer.permit(:sign_up, keys: [:city_id, :role])
      devise_parameter_sanitizer.permit(:account_update, keys: [:city_id, :role])
    end

    def avatar
      @avatar = user_signed_in? ? current_user.avatar_url : nil
    end

    def large_avatar
      avatar_url = user_signed_in? ? current_user.avatar_url : nil
      @large_avatar = "#{avatar_url}&s=128"
    end
end
