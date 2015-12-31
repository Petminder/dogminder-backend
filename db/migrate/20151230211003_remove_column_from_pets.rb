class RemoveColumnFromPets < ActiveRecord::Migration
  def change
    remove_column :pets, :document_file_name, :string
    remove_column :pets, :document_updated_at, :datetime
    remove_column :pets, :document_file_size, :integer
    remove_column :pets, :document_content_type, :string
  end
end
