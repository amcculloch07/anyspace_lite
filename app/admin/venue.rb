ActiveAdmin.register Venue do

 permit_params :address, :title, :city, :state, :zip, :coordinator_id, :website, :capacity, :description, :cancellation_policy, :drink_option_1, :drink_option_2, :drink_option_3, :drink_option_4, :drink_option_5, :food_option_1, :food_option_2, :food_option_3, :food_option_4, :food_option_5, :amenity_1, :amenity_2, :amenity_3, :amenity_4, :amenity_5, :amenity_6, :amenity_7, :amenity_8, :rule_1, :rule_2, :rule_3, :rule_4, :rule_5, :rule_6, :do1_price, :do2_price, :do3_price, :do4_price, :do5_price, :fo1_price, :fo2_price, :fo3_price, :fo4_price, :fo5_price

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
