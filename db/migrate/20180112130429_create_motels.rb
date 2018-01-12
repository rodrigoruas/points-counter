class CreateMotels < ActiveRecord::Migration[5.1]
  def change
    create_table :motels do |t|
      t.string :name
      t.integer :points

      t.timestamps
    end
  end
end
