class AddStatusToComents < ActiveRecord::Migration[6.1]
  def change
    add_column :coments, :status, :string
  end
end
