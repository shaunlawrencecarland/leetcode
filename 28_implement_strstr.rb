# https://leetcode.com/problems/implement-strstr/

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return 0 if needle.length == 0
    return haystack.index(needle) || -1
end