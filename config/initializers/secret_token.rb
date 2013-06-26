# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Postgis::Application.config.secret_key_base = 'ed28aec75647a06ff2ecfd399458baf29f81b822e193c3ce02c925869f2de12ff0556a68e119a489f251362ad5971e4a1d50b9d67639e390cc8a493485ec4b66'
