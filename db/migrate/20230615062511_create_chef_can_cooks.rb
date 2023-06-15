class CreateChefCanCooks < ActiveRecord::Migration[7.0]
  def change
    create_table :chef_can_cooks do |t|

      t.timestamps
    end
  end
end
