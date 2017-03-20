module IceCube

  class WeeklyRule < ValidatedRule

    include Validations::WeeklyInterval

    attr_reader :week_start

    def initialize(interval = 1, week_start = :sunday)
      super(interval)
      interval(interval, week_start)
      schedule_lock(:wday, :hour, :min, :sec)
      reset
    end

  end

end
