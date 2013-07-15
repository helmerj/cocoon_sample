class ContactMechanism < ActiveRecord::Base
  belongs_to :contact_mechanism_type
  has_many :postal_addresses
  has_many :electronic_addresses
  has_many :telecommunications_numbers

  has_many :party_contact_mechanisms
  has_many :parties, -> { uniq }, through: :party_contact_mechanisms

  accepts_nested_attributes_for :postal_addresses,            reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :electronic_addresses,        reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :telecommunications_numbers,  reject_if: :all_blank, allow_destroy: true
end
