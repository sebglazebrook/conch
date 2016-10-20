require "treetop"

module Gsh
  module Ast
    module Nodes
      class Number < Treetop::Runtime::SyntaxNode

        def visit
          number.text_value.to_i
        end
      end
    end
  end
end
