class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :address
      t.string :city

      t.timestamps
    end
  end
end
