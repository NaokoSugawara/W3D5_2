require_relative /00_tree_node.rb


class KnightPathFinder

    def self.valid_moves(pos)
        children = []
        
        x, y = pos

        original_x = x 
        original_y = y 

        children << [x + 2,y + 1]
            x = original_x
            y = original_y
        children << [x + 2,y - 1]
            x = original_x
            y = original_y
 
        children << [x - 2,y - 1]
            x = original_x
            y = original_y

        children << [x - 2,y + 1]
            x = original_x
            y = original_y
  
        children << [x - 1,y + 2]
            x = original_x
            y = original_y
  
        children << [x + 1,y + 2]
            x = original_x
            y = original_y

        children << [x - 1,y - 2]
            x = original_x
            y = original_y
        children << [x + 1,y - 2]
            x = original_x
            y = original_y
        
        return children
    end


    def initialize(start_pos)
        @root_node = PolyTreeNode.new(start_pos)
        @considerd_positions = [start_pos]
        self.build_move_tree(@root_node)
    end

def build_move_tree(root_node)
    nodes = [root_node]
    until nodes.empty?
        node = nodes.shift
        children = new_move_positions(node)
        childen.each do |child_pos|
            child = PolyTreeNode.new(child_pos)
            node.add_child(child)
            nodes << child
        end
    end
end

    # def considerd_positions(start_pos)
    #     @considerd_positions = [start_pos] 
    # end

    def new_move_positions(pos)
        moves = KnightPathFinder.valid_moves(pos)
        
        moves.each do |valid_pos|
        considerd_positions << valid_pos if !considerd_positions.include?(valid_pos)
        end
        considerd_positions
    end

    def find_path(end_pos)
    
    end

end