class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.string :nickname, default: "unKnown"
      t.string :text,null: false
      t.references :forum,null: false
      t.references :user,null: false
      t.timestamps
    end
  end
end
