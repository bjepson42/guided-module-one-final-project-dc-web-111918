class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
    end
  end
end
