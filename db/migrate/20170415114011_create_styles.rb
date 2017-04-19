class CreateStyles < ActiveRecord::Migration[5.0]
  def change
    create_table :styles do |t|
      t.references :type, foreign_key: true
      t.references :user, foreign_key: true
      t.string :name
      t.text :procedure
      t.text :products
      t.date :date
      t.integer :durability
      t.string :image
      t.boolean :own
      t.boolean :privacy
      t.string :tags

      t.timestamps
    end
  end
end
