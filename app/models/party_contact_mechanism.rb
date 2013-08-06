class PartyContactMechanism < ActiveRecord::Base
  belongs_to :party
  belongs_to :contact_mechanism

  belongs_to :party_role_type

  accepts_nested_attributes_for :contact_mechanism, :reject_if => proc { |pcm| pcm['id'].blank? }

  after_initialize :add_contact_mechanism

  def add_contact_mechanism
    self.contact_mechanism ||= self.build_contact_mechanism if self.new_record?
  end


end
