class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 100
      t.datetime :age
      t.string :hobby, limit: 100
      t.timestamps
    end
  end
end
