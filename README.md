cocoon_sample
=============

sample project to use cocoon in deep nested form

To setup, run `rake db:setup`

GOAL

1. I have a party model, which can be either a person or an organization (not included here for simplicity so party just has its primary key).

2. Each party should be able to have multiple postal_addresses, telecommunications_numbers and electronic_addresses. 

3. Each of these could be shared between multiple parties


Therefor:

- `party` has many `communication_mechanism :through => party_contact_mechanisms`

- `party_contact_mechanism` belongs_to `party` and `contact_mechanism`

- `contact_mechanism` has_many `electronic_addresses`, `telecommunications_numbers` and `postal_addresses` (only electronic_addresses is included here.)

(each instance of `contact_mechanism` should only have either a single `electronic_address`, `postal_address` or `telecommunications_number`. 
The has_many relationship was chosen for ease of setup for testing and would be changed laster once the nesting works.)

What I want to implement is a nested form, in which I can add multiple contact_mechanisms (either `electronic_address`, telecommunications_number` or `postal_address`) 
 with little clicks as possible. So preferably I would have an email link, 
n postal link and a phone link in my form for `party`. So for email I would have a link to add a dynamic form for `electronic_addresses`, 
wrapped inside a form for `contact_mechanisms` wrapped in a form for `party_contact_mechanisms`. 
That way all relations would be setup automatically. 
When I use that setup (the Email button in parties#new), the following params_hash is submitted, failing to create an 
`electronic_address` linked to a `contact_mechanism`, linked to a `party_contact_mechanism`. The creation chain breaks already at `party_contact_mechanim`, which is created with a `party_id` but without a `contact_mechanism_id`. no records for `contact_mechanism` or `electronic_address` are created.

The second, less preferred way to implement my plan is following the cocoon wiki example for `belongs_to` relations (https://github.com/nathanvda/cocoon/wiki/A-guide-to-doing-nested-model-forms#the-look-up-or-create-belongs_to) and can be tested using the "PCM" button.
With this approach one would click first to add a `party_contact_mechanism`, then select an existing `contact_mechanism` or click again to create a new `contact_mechanism`. the form for contact_mechanism does have a nested form for electronic_addresses to input the email address. Using different links to different partials, one could nest forms for the other two models accordingly. 

**But** the link for adding the nested form for contact_mechanisms does not show. 


