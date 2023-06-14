class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, default: 'draft', limit: 100, null:false
      t.datetime :birth, null: false
      t.text :skill, array:true, limit: 50
      t.timestamps
    end
  end
end
