class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def after_sign_in_path_for(resource)
    if current_user.role.include?('secretaria')
      return '/secretaria/pensioners'
    end
    if current_user.role.include?('integrador')
      return "/integrador/pensioners"
    end
    if current_user.role.include?('coordinador')
      return "/coordinador/pensioners"
    end

  end

end
