class DropColumnFromPets < ActiveRecord::Migration
  def change
    remove_column :pets, :dog_doc_file_name
    remove_column :pets, :dog_doc_content_type
    remove_column :pets, :dog_doc_file_size
    remove_column :pets, :dog_doc_updated_at
  end
end
