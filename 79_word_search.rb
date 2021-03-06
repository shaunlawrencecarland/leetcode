# https://leetcode.com/problems/word-search/

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
    rows = board.length - 1
    cols = board[0].length - 1
    used = Array.new(board.length) { Array.new(board[0].length) { false } }
    
    (0..board.length-1).each do |i|
        (0..board[0].length-1).each do |j|
            return true if board[i][j] == word[0] && search(board,word,used,i,j)
        end
    end
    
    false
end

def search(board, word, used, i, j)
    return true if word.empty?

    return false if i > board.length - 1
    return false if i < 0
    return false if j > board[0].length - 1
    return false if j < 0
    
    return false if used[i][j]
    return false if board[i][j] != word[0]
    
    used[i][j] = true
    word = word[1..-1]
    
    if search(board, word, used, i+1, j) ||
    search(board, word, used, i, j+1) ||
    search(board, word, used, i-1, j) ||
    search(board, word, used, i, j-1)
        return true
    end
    
    used[i][j] = false
    return false
end
