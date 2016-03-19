class Snap < ActiveRecord::Base
  validates :photo, presence: true

  has_attached_file :photo,
  styles: {
    :thumb => "150x150>",
    :medium => "500x500>",
    :large => "1280x960>"
  }

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/


end
