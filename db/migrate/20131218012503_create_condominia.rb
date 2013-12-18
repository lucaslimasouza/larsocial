class CreateCondominia < ActiveRecord::Migration
  def change
    create_table :condominia do |t|
      t.string :address
      t.string :number
      t.string :zip_code
      t.integer :building
      t.string :designation_building

      t.timestamps
    end
  end
end
