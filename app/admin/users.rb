ActiveAdmin.register User do
  permit_params :phone, :role

  index do
    selectable_column
    id_column
    column :phone
    column :role
    column :created_at
    actions
  end

  filter :phone
  filter :role, as: :select
  filter :created_at

  form do |f|
    f.inputs do
      f.input :phone
      f.input :role, as: :select
    end
    f.actions
  end
end
