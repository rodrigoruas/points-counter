class RemoveMotelFromNewsletters < ActiveRecord::Migration[5.1]
  def change
    remove_column :motels, :newsletter, :references
  end
end
