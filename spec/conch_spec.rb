require_relative "../lib/conch"

describe Conch do

  describe "#evaluate" do

    subject { described_class.evaluate(string) }

    let(:string) { double("String") }
    let(:tokens) { double("Tokens") }
    let(:result) { double("Result") }


    before do
      allow(Conch::Parser).to receive(:parse_to_ast).with(string).and_return(tokens)
      allow(Conch::VirtualMachine).to receive(:evaluate).with(tokens).and_return(result)
    end

    it "parses the string into AST tokens" do
      expect(Conch::Parser).to receive(:parse_to_ast).with(string).and_return(tokens)
      subject
    end

    it "evaluates the tokens returning the result" do
      expect(Conch::VirtualMachine).to receive(:evaluate).with(tokens).and_return(result)
      expect(subject).to eq result
    end
  end
end
