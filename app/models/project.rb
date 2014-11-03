class Project < ActiveRecord::Base
  mount_uploader :photo, ProjectPhotoUploader
  
  validates :title, :description, :url, :presence => true
end
