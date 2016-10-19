require_relative "../lib/gsh"

describe Gsh do

  describe "#evaluate" do

    subject { described_class.evaluate(string) }

    let(:string) { double("String") }
    let(:ast) { double("Ast") }
    let(:result) { double("Result") }


    before do
      allow(Gsh::Parser).to receive(:parse_to_ast).with(string).and_return(ast)
      allow(Gsh::VirtualMachine).to receive(:evaluate).with(ast).and_return(result)
    end

    it "parses the string into an AST" do
      expect(Gsh::Parser).to receive(:parse_to_ast).with(string).and_return(ast)
      subject
    end

    it "evaluates the ast returning the result" do
      expect(Gsh::VirtualMachine).to receive(:evaluate).with(ast).and_return(result)
      expect(subject).to eq result
    end
  end
end
