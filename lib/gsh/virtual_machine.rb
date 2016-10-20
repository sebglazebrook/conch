require_relative '../ast/visitor'
module Gsh
  class VirtualMachine

    def self.evaluate(ast)
      ast_visitor = Ast::Visitor.new
      ast_visitor.accept(ast)
    end

  end
end
