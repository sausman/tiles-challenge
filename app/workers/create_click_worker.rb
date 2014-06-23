class CreateClickWorker
  include Sidekiq::Worker

  def perform(title, timestamp)
    Click.create title: title,
                 timestamp: timestamp
  end
end
