require_relative /00_tree_node.rb


class KnightPathFinder

    def self.valid_moves(pos)
        x, y = pos

        original_x = x 
        original_y = y 

        if pos == (x + 2),(y + 1)
            x = original_x
            y = original_y
            return true
        elsif pos == (x + 2),(y - 1)
            x = original_x
            y = original_y
            return true
        elsif pos == (x - 2),( y - 1)
            x = original_x
            y = original_y
            return true
        elsif pos == (x - 2),(y + 1)
            x = original_x
            y = original_y
            return true
        elsif pos == (x - 1),(y + 2)
            x = original_x
            y = original_y
            return true
        elsif pos == (x + 1), (y + 2)
            x = original_x
            y = original_y
            return true
        elsif pos == (x - 1), (y - 2)
            x = original_x
            y = original_y
            return true
        elsif pos == (x + 1), (y - 2)
            x = original_x
            y = original_y
            return true
        else
            return false
        end
    end


    def initialize(start_pos)
        @root_node = PolyTreeNode.new(start_pos)
        self.build_move_tree(@root_node)
    end

    def build_move_tree(root_node)

    end

    def considerd_positions(start_pos)
        @considerd_positions = [start_pos] 
    end

    def new_move_positions(pos)
        return pos if !@considerd_positions.include?(pos) && KnightPathFinder.valid_moves(pos)
    end

end