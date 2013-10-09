# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Schedule::Application.config.secret_key_base = 'a7d9044641f1542844d5ec8267a0bebf39fedece25e75a9b0545083ba04a23fe59eb544e6000cdee313e58c357495e9b0a69b2f0ae8d5bcb9750f8e3c9fdea02'
