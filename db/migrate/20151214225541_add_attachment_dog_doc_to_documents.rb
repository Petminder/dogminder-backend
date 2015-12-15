class AddAttachmentDogDocToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :dog_doc
    end
  end

  def self.down
    remove_attachment :documents, :dog_doc
  end
end
