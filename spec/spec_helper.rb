require "bundler/setup"
require "prct06/etiqueta_nutri"
require "prct06/lista"
require "prct06/lista_value"
require "prct06/individuo"

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
 
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

end
