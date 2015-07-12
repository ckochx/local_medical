# This file is copied to spec/ when you run 'rails generate rspec:install'

require_relative './spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec'
require 'rspec/rails'
require 'fuubar'


RSpec.configure do |config|
  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.

  # Fuubar pacman status bar...  Totally needed.
  config.fuubar_progress_bar_options = {
    format: '%a %bᗧ%i %p%% %t',
    progress_mark: ' ',
    remainder_mark: '･',
    starting_at: 10
  }

  # config.use_transactional_fixtures = true
  # config.use_transactional_examples = true

  # config.before(:suite) do
  #   DatabaseCleaner.strategy = :transaction
  #   DatabaseCleaner.clean_with(:truncation)
  # end

  # config.around(:each) do |example|
  #   DatabaseCleaner.cleaning do
  #     example.run
  #   end
  # end

  # config.infer_spec_type_from_file_location!
end