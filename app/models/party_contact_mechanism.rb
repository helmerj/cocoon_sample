class PartyContactMechanism < ActiveRecord::Base
  belongs_to :party
  belongs_to :contact_mechanism

  belongs_to :party_role_type

  accepts_nested_attributes_for :contact_mechanism, :reject_if => :all_blank
end
