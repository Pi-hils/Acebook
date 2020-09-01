class AddAccountRefToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :account, null: false, foreign_key: true
  end
end
