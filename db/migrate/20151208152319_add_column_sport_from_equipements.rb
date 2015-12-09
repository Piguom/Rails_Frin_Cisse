class AddColumnSportFromEquipements < ActiveRecord::Migration
  def change
    add_reference :equipements, :sport, index: true
  end
end
