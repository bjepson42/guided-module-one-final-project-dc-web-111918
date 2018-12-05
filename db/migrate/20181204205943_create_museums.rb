class CreateMuseums < ActiveRecord::Migration[5.0]
  def change
    create_table :museums do |t|
      t.string :name
      t.string :venuetype
      t.datetime :hours
      t.string :neighborhood
    end
  end
end
