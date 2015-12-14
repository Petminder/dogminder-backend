#
class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :dob
      t.string :last_rabies
      t.string :last_tick
      t.string :last_rabies

      t.timestamps null: false
    end
  end
end
