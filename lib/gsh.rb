require_relative "./gsh/parser"
require_relative "./gsh/virtual_machine"

module Gsh

  def self.evaluate(string)
    tokens = Parser.parse_to_ast(string)
    VirtualMachine.evaluate(tokens)
  end

end
