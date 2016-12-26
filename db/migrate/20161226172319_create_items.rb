class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :price
      t.string :description
      t.string :category
      t.string :url

      t.timestamps null: false
    end
  end
end
