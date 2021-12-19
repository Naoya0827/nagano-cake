class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.integer :customer_id
      t.string :delivery_postal_code
      t.string :delivery_address
      t.string :delivery_name
      t.integer :postage
      t.integer :billing_amount
      t.integer :payment_method
      t.integer :status
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
