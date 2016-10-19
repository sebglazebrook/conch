require_relative "../../../lib/conch/parser"

describe Conch::Parser do

  describe ".parse_to_ast" do

    subject { described_class.parse_to_ast(string) }

    context "when given a number" do

      let(:string) { "3" }

      it "returns a Number ast node" do
        expect(subject).to be_kind_of(Conch::Ast::Nodes::Number)
      end
    end

    context "when given an addition expression" do

      let(:string) { "3 + 4" }

      it "returns an Addition ast node" do
        expect(subject).to be_kind_of(Conch::Ast::Nodes::Addition)
      end
    end
  end
end
