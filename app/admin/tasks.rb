ActiveAdmin.register Task do

permit_params :title, :note, :video, :header, :tag, :project_id
controller do
  def find_resource
    scoped_collection.friendly.find(params[:id])
  end
end

end
