class CreateCategoryForums < ActiveRecord::Migration[5.2]
  def change
    create_table :category_forums do |t|
      t.references :forum,null: false
      t.references :category,null: false
      t.timestamps
    end
  end
end
