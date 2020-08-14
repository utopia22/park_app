ActiveAdmin.register User do
  permit_params :image_name, :name, :email, :password
end
