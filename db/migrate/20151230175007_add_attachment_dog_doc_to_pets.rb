class AddAttachmentDogDocToPets < ActiveRecord::Migration
  def self.up
    change_table :pets do |t|
      t.attachment :dog_doc
    end
  end

  def self.down
    remove_attachment :pets, :dog_doc
  end
end
