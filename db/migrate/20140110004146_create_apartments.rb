class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :designation_building
      t.string :number

      t.timestamps
    end
  end
end
