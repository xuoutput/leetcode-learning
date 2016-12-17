
// 本题题意：给出一个字符串，该字符串会通过Z字形排列，然后给出Z字形排列的顺序读取结果。

class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        var sbs:[[Character]] = Array(repeating: [], count: numRows)
        let x = 2 * numRows - 2
        var i = 0
        var j = 0
        var isFront = true
        for c in s.characters {
            if (i % x) == 0 {
              isFront = true
            } else if (i % x) == numRows - 1 {
              isFront = false
            }
            sbs[j].append(c)
            j += isFront ? 1 : -1
            i += 1
        }
        var re:[Character] = sbs[0]
        for i in 1..<sbs.count {
            re += sbs[i]
        }
        return String(re)
    }
}

print(Solution().convert("PAYPALISHIRING", 3))
