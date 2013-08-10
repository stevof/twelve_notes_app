# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

TwelveNotesApp::Application.config.secret_key_base = secure_token


# TwelveNotesApp::Application.config.secret_key_base = '3d8b0a5c222836e1e5e02877626cdc96bda1996cfe8dfad25d66a753fc6b68b39ad6e0d945b00d4b6a3024f927cb54c4eb0dd07101385c9d905018f5096049aa'
