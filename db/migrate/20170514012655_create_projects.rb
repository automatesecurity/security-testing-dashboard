class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :link
      t.text :description
      t.integer :cost
      t.string :type
      t.string :tester
      t.string :rp
      t.string :architect
      t.string :department

      t.timestamps
    end
  end
end
