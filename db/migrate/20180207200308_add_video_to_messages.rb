class AddVideoToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :video, :string
  end
end
