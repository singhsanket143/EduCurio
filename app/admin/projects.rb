ActiveAdmin.register Project do

  permit_params :name, :content, :price, :image

  show do |t|
    attributes_table do
      row :name
      row :content
      row :price
      row :image do
        project.image? ? image_tag(project.image.url, height: '100') : content_tag(:span, "No Image")
      end
    end
  end

  form(:html => { :multipart => true }) do |f|
    f.inputs do
      f.input :name
      f.input :content
      f.input :price
      f.input :image, as: :file
    end
    f.actions
  end
end
