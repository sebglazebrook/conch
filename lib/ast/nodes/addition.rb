require "treetop" 
module Gsh
  module Ast
    module Nodes
      class Addition < Treetop::Runtime::SyntaxNode

        def visit
          left.visit + right.visit
        end

      end
    end
  end
end
