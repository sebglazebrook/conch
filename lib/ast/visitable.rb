module Gsh
  module Ast
    module Visitable
      def accept(visitor)
        visitor.visit(self)
      end
    end
  end
end
