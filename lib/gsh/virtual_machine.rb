module Gsh
  class VirtualMachine

    def self.evaluate(ast)
      ast.visit
    end

  end
end
