require_relative "./conch/parser"
require_relative "./conch/virtual_machine"

module Conch

  def self.evaluate(string)
    tokens = Parser.parse_to_ast(string)
    VirtualMachine.evaluate(tokens)
  end

end
