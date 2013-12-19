class AddSyndicToCondominium < ActiveRecord::Migration
  def change
    add_reference :condominia, :syndic, index: true
  end
end
