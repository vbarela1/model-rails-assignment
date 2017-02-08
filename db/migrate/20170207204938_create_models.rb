class CreateModels < ActiveRecord::Migration[5.0]
  def change
    create_table :models do |t|
      t.string :name, null:false
      t.integer :age, null:false
      t.string :hair_color, null: false 
      t.string :eye_color, null: false
      t.string :gender, null: false 
      t.boolean :alive, default: false 

      t.timestamps
    end
  end
end
