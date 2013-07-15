class CreateContactMechanismTypes < ActiveRecord::Migration
  def change
    create_table :contact_mechanism_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
