class Message < ApplicationRecord

  belongs_to :user

  validates :createur_name, presence: true
  validates :createur_prenom, presence: true
  validates :createur_mail, presence: true
  validates :dest_nom, presence: true
  validates :dest_prenom, presence: true
  validates :dest_mail, presence: true
  mount_uploader :video, VideoUploader
end
