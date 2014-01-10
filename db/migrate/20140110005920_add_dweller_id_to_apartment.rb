class AddDwellerIdToApartment < ActiveRecord::Migration
  def change
    add_reference :apartments, :dweller, index: true
  end
end
