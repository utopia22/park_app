ActiveAdmin.register Post do
   permit_params :image, :park, :outline, :location, :access, :hashbody, :tag_list
end
