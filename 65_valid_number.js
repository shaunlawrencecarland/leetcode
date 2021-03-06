/**
 * @param {string} s
 * @return {boolean}
 */
var isNumber = function(s) {
    s = s.trim(); 
    
    if (s.length === 0) { 
        return false;
    }
    return new Number(s).valueOf().toString() !== "NaN"
};

// https://leetcode.com/submissions/detail/171277459/