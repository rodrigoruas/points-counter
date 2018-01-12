class RemoveMotelFromNewsletters2 < ActiveRecord::Migration[5.1]
  def change
    remove_column :newsletters, :motel_id
  end
end
