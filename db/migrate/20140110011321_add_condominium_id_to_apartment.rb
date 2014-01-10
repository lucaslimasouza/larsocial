class AddCondominiumIdToApartment < ActiveRecord::Migration
  def change
    add_reference :apartments, :condominium, index: true
  end
end
