class DumbWorker
  include Sidekiq::Worker
  def perform(name, count=10000000)
    dumb_counter = DumbCounter.new(name: name, started_at: DateTime.now)
    count.times { |current_count| p current_count }
    dumb_counter.finished_at = DateTime.now
    dumb_counter.save
  end
end