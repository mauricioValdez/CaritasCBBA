class Help < ActiveRecord::Base
  belongs_to :social_card
  attr_accessible  :what_is_persons_problem, :type_of_help, :was_derive_to_some_institution, :date_of_help, :detail, :observation
  attr_writer :current_step
end
