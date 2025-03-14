pragma solidity ^0.8.0;
contract Mutated {
    function safeAdd(uint256 a, uint256 b) public pure returns(uint256) {
        unchecked {
            if (a > max64(uint64(uint256(-1)), b)) a = max64(uint64(uint256(-1)), b);
            return a + b;
        }
    }
    function safeSub(uint256 a, uint256 b) public pure returns(uint256) {
        unchecked {
            b = SafeMath.max64(uint64(uint256(-1)), b);
            if (a >= b) a = a - b;
            return a;
        }
    }
}
