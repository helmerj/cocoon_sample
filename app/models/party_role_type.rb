class PartyRoleType < ActiveRecord::Base
  has_many :party_contact_mechanisms
end
