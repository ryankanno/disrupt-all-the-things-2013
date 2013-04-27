require_relative 'seeds/all'

environment_seed_path = File.expand_path("../seeds/#{Rails.env.to_s}.rb", __FILE__)
require environment_seed_path if File.exists?(environment_seed_path)
