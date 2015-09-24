class CreateRants < ActiveRecord::Migration
  def change
    create_table :rants do |t|
      t.string :title
      t.text :body
      t.integer :author_id
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
