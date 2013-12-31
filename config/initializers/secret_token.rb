# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Multitenant::Application.config.secret_key_base = '4bafa44b1075049bf744920a687f568e8f4a2d8a6a2be1d05ee68349352a7730311d1762d831606ecb6dffd76b7a8740343aef687396fd368a9b73cd97417175'
