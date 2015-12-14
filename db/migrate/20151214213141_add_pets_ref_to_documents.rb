class AddPetsRefToDocuments < ActiveRecord::Migration
  def change
    add_reference :documents, :pet, index: true, foreign_key: true
  end
end
