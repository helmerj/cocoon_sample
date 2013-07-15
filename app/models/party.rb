class Party < ActiveRecord::Base
  has_many :party_contact_mechanisms
  has_many :contact_mechanisms, -> { uniq }, through: :party_contact_mechanisms

  accepts_nested_attributes_for :party_contact_mechanisms, reject_if: :all_blank, allow_destroy: true

end
