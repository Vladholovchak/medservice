ActiveAdmin.register Doctor do
  permit_params :speciality

  index do
    selectable_column
    id_column
    column :speciality
    column :description
    column :created_at
    actions
  end

  filter :speciality, as: :select
  filter :created_at

  form do |f|
    f.inputs do
      f.input :speciality, as: :select
    end
    f.actions
  end
end
