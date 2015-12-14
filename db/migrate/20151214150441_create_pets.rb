class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :dob
      t.date :last_rabies
      t.date :last_tick
      t.date :last_rabies
      t.date :last_heartworm

      t.timestamps null: false
    end
  end
end
