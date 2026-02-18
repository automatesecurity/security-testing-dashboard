# Rails 5.0.2's Minitest plugin defines SuppressedSummaryReporter#aggregated_results
# with a 0-arity signature. Newer Minitest versions may call it with args.
#
# This patch keeps the test runner working without requiring a Rails upgrade.

module Minitest
  class SuppressedSummaryReporter
    # Accept any args for compatibility across Minitest versions.
    def aggregated_results(*args)
      super() unless options[:output_inline]
    end
  end
end
