ActiveAdmin.register ContactInfo do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :name, :address1, :address2, :phone, :city, :state, :postal_code
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :name, :address1, :address2, :phone, :city, :state, :postal_code]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
