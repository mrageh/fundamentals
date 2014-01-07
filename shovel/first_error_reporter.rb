module Minitest
  class SummaryReporter
    def aggregated_results # :nodoc:
      filtered_results = results.dup
      filtered_results.reject!(&:skipped?) unless options[:verbose]
      filtered_results[0..0].map do |result|
      "\n%s" % [result]
      end.join("\n") + "\n"
    end
  end
end

