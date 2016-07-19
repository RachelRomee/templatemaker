class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.string :css
      t.string :html
      t.references :template

      t.timestamps null: false
    end
  end
end
