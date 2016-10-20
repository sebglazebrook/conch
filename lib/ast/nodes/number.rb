require "treetop"
require_relative "../visitable"

module Gsh
  module Ast
    module Nodes
      class Number < Treetop::Runtime::SyntaxNode

        include Gsh::Ast::Visitable

        def klass
          'Number'
        end
      end
    end
  end
end
