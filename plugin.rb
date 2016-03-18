# name: discourse cookie domain setup
# about: modifications for forums and stuff
# version: 0.3
# authors: ntauthority,davidbuzz

load File.expand_path("../current_user_provider.rb", __FILE__)

Discourse.current_user_provider = ExCurrentUserProvider
