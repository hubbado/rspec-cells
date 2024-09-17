# This is a modified copied of the RSpec::Rails::RailsExampleGroup that has had
# references to fixtures removed so that it works without ActiveRecord
# (needed for the Hyerhub website)

require 'rspec/rails/matchers'

require 'active_support/current_attributes/test_helper'
require 'active_support/execution_context/test_helper'

module RSpec
  module Rails
    # @api public
    # Common rails example functionality.
    module RailsExampleGroup
      extend ActiveSupport::Concern
      include RSpec::Rails::SetupAndTeardownAdapter
      include RSpec::Rails::MinitestLifecycleAdapter
      include RSpec::Rails::MinitestAssertionAdapter
      # include RSpec::Rails::FixtureSupport
      include RSpec::Rails::TaggedLoggingAdapter
      include ActiveSupport::CurrentAttributes::TestHelper
      include ActiveSupport::ExecutionContext::TestHelper
    end
  end
end
