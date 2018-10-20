ActiveAdmin.register Engagement do

 permit_params :empl_id, :inst_id, :sol_id, :eng_name, :eng_number, :sp_link, :eng_summary, :type_id, :phase_id
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
