require_relative "../../../lib/conch/parser"

describe Conch::Parser do

  describe ".parse_to_ast" do

    subject { described_class.parse_to_ast(string) }

    context "when given a number" do

      let(:string) { "3" }

      it "returns a Number ast node" do
        expect(subject).to eq(Conch::Ast::Nodes::Number.new(3))
      end
    end

    context "when given an addition expression" do

      let(:string) { "3 + 4" }

      it "returns an Addition ast node" do
        expect(subject).to eq(Conch::Ast::Nodes::Addition.new(Conch::Ast::Nodes::Number.new(3), Conch::Ast::Nodes::Number.new(4)))
      end
    end
  end
end
