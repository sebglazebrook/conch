require "treetop"
require_relative "../visitable"

module Gsh
  module Ast
    module Nodes
      class Addition < Treetop::Runtime::SyntaxNode

        include Gsh::Ast::Visitable

        def klass
          'Addition'
        end

      end
    end
  end
end
