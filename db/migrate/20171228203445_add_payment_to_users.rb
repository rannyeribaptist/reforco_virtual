class AddPaymentToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :paid, :boolean, default: false
    add_column :users, :payment_id, :string
    add_column :users, :payment_link, :string
  end
end
