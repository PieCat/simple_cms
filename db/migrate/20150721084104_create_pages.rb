class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.integer :position
      t.boolean :visible
      t.string :link
      t.integer :subject_id

      t.timestamps null: false
    end
    
    add_index :pages, :subject_id
  end
end
