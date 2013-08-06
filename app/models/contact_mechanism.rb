class ContactMechanism < ActiveRecord::Base
  belongs_to :contact_mechanism_type
  has_one :postal_address
  has_one :electronic_address
  has_one :telecommunications_number

  has_many :party_contact_mechanisms
  has_many :parties, -> { uniq }, through: :party_contact_mechanisms

  accepts_nested_attributes_for :postal_address,            reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :electronic_address,        reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :telecommunications_number, reject_if: :all_blank, allow_destroy: true

  after_initialize :add_electronic_address
  

  def add_electronic_address
    self.electronic_address         ||= self.build_electronic_address        if self.new_record?
    self.postal_address             ||= self.build_postal_address            if self.new_record?
    self.telecommunications_number  ||= self.build_telecommunications_number if self.new_record?
  end

end
