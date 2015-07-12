require 'fuubar'

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
  config.default_formatter = 'doc' if config.files_to_run.one?

  # config.backtrace_exclusion_patterns << /.*gems.*/
  # config.backtrace_exclusion_patterns << /.*spec_helper.*/
  # config.backtrace_exclusion_patterns << /.*rails_helper.*/

  # Fuubar pacman status bar...  Totally needed.
  config.fuubar_progress_bar_options = {
    format: '%a %bᗧ%i %p%% %t',
    progress_mark: ' ',
    remainder_mark: '･',
    starting_at: 10
  }

  # Print the 10 slowest examples and example groups at the
  # end of the spec run, to help surface which specs are running
  # particularly slow.
  # config.profile_examples = 10

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = :random

  Kernel.srand config.seed

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end

end
