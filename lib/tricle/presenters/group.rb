require_relative 'metric'
require_relative 'section'

module Tricle
  module Presenters
    class Group < Section
      attr_reader :metric_presenters, :title

      def initialize(title=nil)
        @title = title
        @metric_presenters = []
      end

      def add_metric(klass)
        presenter = Tricle::Presenters::Metric.new(klass)
        self.metric_presenters << presenter
      end
    end
  end
end
