$:.unshift File.expand_path("../lib", __FILE__)
require "rspec/cells/version"

Gem::Specification.new do |s|
  s.name        = "rspec-cells"
  s.version     = RSpec::Cells::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Nick Sutterer"]
  s.email       = ["apotonick@gmail.com"]
  s.homepage    = "https://github.com/trailblazer/rspec-cells"
  s.summary     = %q{Spec your cells.}
  s.description = %q{Use render_cell in your specs.}
  s.license     = 'MIT'

  s.metadata = {
    "bug_tracker_uri"   => "https://github.com/trailblazer/rspec-cells/issues",
    "changelog_uri"     => "https://github.com/trailblazer/rspec-cells/blob/master/CHANGES.md",
    "documentation_uri" => "https://www.rubydoc.info/gems/rspec-cells/#{s.version}",
    "homepage_uri"      => s.homepage,
    "source_code_uri"   => "https://github.com/trailblazer/rspec-cells/tree/v#{s.version}",
    "wiki_uri"          => "https://github.com/trailblazer/rspec-cells/wiki",
  }

  s.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |file|
      file.start_with?(*%w[.git Appraisals Gemfile Rakefile gemfiles spec])
    end
  end
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rspec-rails', ">= 3.0.0", "< 6.2.0"
  s.add_runtime_dependency "cells",       ">= 4.0.0", "< 6.0.0"


  s.add_development_dependency "capybara" # FIXME: please make test for Capybara run.
  s.add_development_dependency "appraisal", "~> 2.0"
end
