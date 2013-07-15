class CreateElectronicAddresses < ActiveRecord::Migration
  def change
    create_table :electronic_addresses do |t|
      t.string :electronic_address_string
      t.integer :contact_mechanism_id

      t.timestamps
    end
  end
end
