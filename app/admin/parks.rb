ActiveAdmin.register Park do
   permit_params :image, :park_name, :outline, :location, :access, :tag_list
end
