class CreatePartyContactMechanisms < ActiveRecord::Migration
  def change
    create_table :party_contact_mechanisms do |t|
      t.integer :party_role_type_id
      t.integer :party_id
      t.integer :contact_mechanism_id
      t.integer :party_contact_mechanism_seq_id
      t.date :from_date
      t.date :thru_date
      t.boolean :non_solicitation_ind
      t.string :extension
      t.text :comment

      t.timestamps
    end
  end
end
