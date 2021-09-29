class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.integer :prescription_id
      t.string :store
      t.string :address
      t.integer :price

      t.timestamps
    end
    # add_index : stores, [:prescription_id, :created_at]
  end
end
