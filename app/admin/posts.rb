ActiveAdmin.register Post do
   permit_params :image, :park, :outline, :location, :access, :tag_list
end
