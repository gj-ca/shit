class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :quantity
      t.decimal :cost
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
