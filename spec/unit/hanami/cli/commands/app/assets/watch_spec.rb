# frozen_string_literal: true

RSpec.describe Hanami::CLI::Commands::App::Assets::Watch, :app do
  subject { described_class.new(interactive_system_call: interactive_system_call) }
  let(:interactive_system_call) { proc { |**| } }

  context "#call" do
    it "invokes hanami-assets executable" do
      expect(interactive_system_call).to receive(:call).with(Hanami.app.config.assets.exe_path, "--watch")

      subject.call
    end
  end
end
