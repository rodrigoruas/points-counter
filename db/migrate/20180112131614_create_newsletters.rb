class CreateNewsletters < ActiveRecord::Migration[5.1]
  def change
    create_table :newsletters do |t|
      t.string :name
      t.references :motel, foreign_key: true

      t.timestamps
    end
  end
end
