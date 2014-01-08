class AddNameCollumnCondominuim < ActiveRecord::Migration
 def up
    add_column :condominia, :name, :string
  end

  def down
    remove_column :condominia, :name
  end
end
