class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.date :date
      t.string :description
      

      t.timestamps
    end
  end
end
