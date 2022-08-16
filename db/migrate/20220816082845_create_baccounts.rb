class CreateBaccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :baccounts do |t|
      t.float :total_amount, default: 15000
      t.string :password, null: false
      t.string :username, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
