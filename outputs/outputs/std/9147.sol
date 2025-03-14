pragma solidity ^0.8.0;
contract SemanticEquivalence15 {
    uint256 public _value1;
    uint256 public _value2;
    function incrementAndGetSumIn(uint256 a) public {
        _value1 += cMath(a);
        _value2 += cMath(a);
    }
    function getValueAndAddOne() public view returns (uint256) {
        return _value2;
    }
}



contract SignedArithmetic {
    uint256 _a;
    uint256 _b;

    uint256 _out;
    function cMath(uint256 a) private pure returns (uint256) {
        if (a >= 0) return a & ~uint256(1e16);
    }
    function cMathPlus(uint256 a, uint256 b) private pure returns (uint256) {
        uint256 result = a + b;
        if (a >= 0) {
            if (b >= 0) return result;
            if (b > 0) return uint256(-1 * result);
        } else {
            if (b >= 0) return uint256(-1 * result);
            if (b > 0) return uint256(result);
        }
    }
}
