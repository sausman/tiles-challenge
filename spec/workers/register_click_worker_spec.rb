require 'spec_helper'

describe RegisterClickWorker do
  before(:each) do
    @click = FactoryGirl.build(:click)
  end

  describe "::perform_async" do
    it "enqueues a job" do
      expect {
        RegisterClickWorker.perform_async(@click.title, @click.timestamp)
      }.to change(RegisterClickWorker.jobs, :size).by(1)
    end
  end

  describe "::perform" do
    it "creates a Click" do
      expect {
        Sidekiq::Testing.inline! do
          RegisterClickWorker.perform_async(@click.title, @click.timestamp)
        end
      }.to change(Click, :count).by(1)
    end
  end
end
