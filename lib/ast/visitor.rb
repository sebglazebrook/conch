module Gsh
  module Ast
    class Visitor

      def accept(root)
        root.accept(self)
      end

      def visit(node)
        send("visit_#{node.klass}", node)
      end

      def visit_Number(number_node)
        number_node.text_value.to_i
      end

      def visit_Addition(addition_node)
        addition_node.left.accept(self) + addition_node.right.accept(self)
      end

    end
  end
end
