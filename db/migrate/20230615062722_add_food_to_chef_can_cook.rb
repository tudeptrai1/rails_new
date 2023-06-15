class AddFoodToChefCanCook < ActiveRecord::Migration[7.0]
  def change
    add_reference :chef_can_cooks, :food, null: false, foreign_key: true
  end
end
