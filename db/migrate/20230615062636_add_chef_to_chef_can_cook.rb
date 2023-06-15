class AddChefToChefCanCook < ActiveRecord::Migration[7.0]
  def change
    add_reference :chef_can_cooks, :chef, null: false, foreign_key: true
  end
end
