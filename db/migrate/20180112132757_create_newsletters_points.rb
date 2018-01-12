class CreateNewslettersPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :newsletters_points do |t|
      t.references :motel, foreign_key: true
      t.references :newsletter, foreign_key: true
      t.integer :open
      t.integer :click
      t.integer :demo

      t.timestamps
    end
  end
end
