class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.integer :id
      t.string :name
      t.string :css
      t.string :html

      t.timestamps null: false
    end
  end
end
