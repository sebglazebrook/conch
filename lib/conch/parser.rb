require_relative "../ast/nodes/addition"
require_relative "../ast/nodes/number"

require "treetop"

module Conch
  class Parser

    def self.parse_to_ast(string)
      inner_parser = Treetop.load(grammer_file_path.to_s)
      inner_parser.new.parse(string)
    end

    private

    def self.grammer_file_path
      PROJECT_ROOT.join("config", "grammer.treetop")
    end
  end
end
