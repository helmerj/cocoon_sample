class CreatePartyRoleTypes < ActiveRecord::Migration
  def change
    create_table :party_role_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
