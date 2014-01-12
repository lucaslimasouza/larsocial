
class Dwellers::RegistrationsController < Devise::RegistrationsController

	def new
		@search_key = params[:q]
		if @search_key.present?
			search_condominium
		end
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
      resource.apartment
      respond_with resource
    end
  end

  def sign_up_params
    params.
      require(:dweller).
      permit(:name, :phone, :cpf,  :email, :password, :password_confirmation,
        apartment_attributes: [:number, :designation_building])
  end

  private

  def search_condominium
		@condominium = Condominium.search(@search_key).first
		if @condominium.present?
			build_nested_resource_objects
		else
			flash[:notice] = "Favor inserir uma CHAVE válida"
		end
  end

  def build_nested_resource_objects
		flash[:notice] = nil
		build_resource({})
	
		self.resource.build_apartment
		self.resource.apartment.condominium = @condominium

		respond_with self.resource
  end
end