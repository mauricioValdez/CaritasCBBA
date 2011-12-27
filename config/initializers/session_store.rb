# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Caritas_session',
  :secret      => '51f44bb053a493843f785b1f7e809153d3f21e22c68c406bc5aefa6d0b36f768757e12be1e27560644a222e6284015054fbe752bbafc45ccde64a46e147462bc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
