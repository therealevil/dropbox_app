# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dropbox_app_session',
  :secret      => '783ae75d2c9779ce1c6aa143e3066e48d0031e22ad9e864286ebb063d4f838e8cf0c1b31c9e01239af5123c6f28dd1bf6c0ff9184a2291d21054ef294cfc943a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
