class AddColumnToPets < ActiveRecord::Migration
  def change
    add_column :pets, :last_heartworm, :string
  end
end
