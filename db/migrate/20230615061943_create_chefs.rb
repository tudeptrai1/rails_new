class CreateChefs < ActiveRecord::Migration[7.0]
  def change
    create_table :chefs do |t|
      t.string :name, null: false, limit: 100
      t.datetime :age
      t.string :idol
      t.timestamps
    end
  end
end
