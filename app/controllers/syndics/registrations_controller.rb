
class Syndics::RegistrationsController < Devise::RegistrationsController

	def new
    build_resource({})
    self.resource.build_condominium
    respond_with self.resource
  end

  # POST /resource
  def create
    build_resource(sign_up_params)

    if resource.save
      yield resource if block_given?
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      resource.condominium
      respond_with resource
    end
  end

  def after_sign_up_path_for(resource)
    "/condominia/#{resource.condominium.id}"
  end


  def sign_up_params
    params.
      require(:syndic).
      permit(:name, :phone, :cpf,  :email, :password, :password_confirmation,
        condominium_attributes: [:address, :number, :zip_code, :building, :designation_building ])
  end
end