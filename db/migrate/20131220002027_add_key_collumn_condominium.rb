class AddKeyCollumnCondominium < ActiveRecord::Migration
 def up
    add_column :condominia, :key, :string
  end

  def down
    remove_column :condominia, :key
  end
end
