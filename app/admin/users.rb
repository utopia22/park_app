ActiveAdmin.register User do

    permit_params :image, :park, :outline, :location, :access

end
