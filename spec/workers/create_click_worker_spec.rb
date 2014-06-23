require 'spec_helper'

describe CreateClickWorker do
  before(:each) do
    @click = FactoryGirl.build(:click)
  end

  describe "::perform_async" do
    it "enqueues a job" do
      expect {
        CreateClickWorker.perform_async(@click.title, @click.timestamp)
      }.to change(CreateClickWorker.jobs, :size).by(1)
    end
  end

  describe "::perform" do
    it "creates a Click" do
      expect {
        Sidekiq::Testing.inline! do
          CreateClickWorker.perform_async(@click.title, @click.timestamp)
        end
      }.to change(Click, :count).by(1)
    end
  end
end
