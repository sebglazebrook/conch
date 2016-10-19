require_relative "../../lib/gsh"

describe Gsh do

  describe "#evaluate" do

    subject { described_class.evaluate(string) }

    context "when given a simple addition statement" do

      let(:string) { "1 + 3" }

      it "evaluates the result correctly" do
        expect(subject).to eq(4)
      end
    end
  end
end
