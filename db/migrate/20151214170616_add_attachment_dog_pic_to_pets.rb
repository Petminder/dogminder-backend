class AddAttachmentDogPicToPets < ActiveRecord::Migration
  def self.up
    change_table :pets do |t|
      t.attachment :dog_pic
    end
  end

  def self.down
    remove_attachment :pets, :dog_pic
  end
end
