
class KnightPathFinder

    def self.valid_moves(pos)

    end


    def initialize(start_pos)
        @root_node = PolyTreeNode.new(start_pos)
        self.build_move_tree(@root_node)
    end

    def build_move_tree(root_node)

    end

    def considerd_positions(start_pos)
        @considerd_positions = start_pos
    end

    def new_move_positions(pos)

    end

end