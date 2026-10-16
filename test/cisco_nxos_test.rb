# frozen_string_literal: true

require "minitest/autorun"
require "cisco_nxos"

class CiscoNXOSTest < Minitest::Test
  def test_version_matches_gemspec
    spec = Gem::Specification.load(File.expand_path("../cisco_nxos.gemspec", __dir__))
    assert_equal CiscoNXOS::VERSION, spec.version.to_s
    assert_equal "cisco_nxos", spec.name
  end

  def test_errors_can_be_rescued_as_standard_errors
    assert_operator CiscoNXOS::Error, :<, StandardError
  end

  def test_package_contains_only_library_and_documentation
    spec = Gem::Specification.load(File.expand_path("../cisco_nxos.gemspec", __dir__))
    assert_equal %w[CHANGELOG.md LICENSE README.md lib/cisco_nxos.rb lib/cisco_nxos/version.rb], spec.files.sort
  end
end
