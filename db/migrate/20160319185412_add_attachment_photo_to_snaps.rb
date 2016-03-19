class AddAttachmentPhotoToSnaps < ActiveRecord::Migration
  def self.up
    change_table :snaps do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :snaps, :photo
  end
end
