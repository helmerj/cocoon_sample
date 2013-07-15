class CreateContactMechanisms < ActiveRecord::Migration
  def change
    create_table :contact_mechanisms do |t|
      t.integer :contact_mechanism_type_id

      t.timestamps
    end
  end
end
