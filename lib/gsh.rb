require_relative "./gsh/parser"
require_relative "./gsh/virtual_machine"

module Gsh

  def self.evaluate(string)
    ast = Parser.parse_to_ast(string)
    VirtualMachine.evaluate(ast)
  end

end
