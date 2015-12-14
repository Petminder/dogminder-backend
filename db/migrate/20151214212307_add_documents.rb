class AddDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :doc_name

      t.timestamps null: false
    end
  end
end
