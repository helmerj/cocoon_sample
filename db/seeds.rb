# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create contact_mechanism_types
ContactMechanismType.create(name: 'phone')
email = ContactMechanismType.create(name: 'email')
ContactMechanismType.create(name: 'postal address')
ContactMechanismType.create(name: 'facebook handle')
ContactMechanismType.create(name: 'twitter handle')

#create  Party Role Types
# person
PartyRoleType.create(name: "PRT 1")
PartyRoleType.create(name: "PRT 2")
PartyRoleType.create(name: "PRT 3")

# generate a single contact_mechanism_types
cm = ContactMechanism.create(contact_mechanism_type_id: "#{email.id}")

# generate a single sample email address
ElectronicAddress.create(electronic_address_string: "test@example.com", contact_mechanism_id: "#{cm.id}")

