pragma solidity ^0.8.0;
library SafeMath {
    function mul(uint256 a, uint256 b) public pure returns (uint256) {
        if (a == 0) {
            return 0;
        }
        uint256 c = a * b;
        require(c / a == b, "Division Overflow");
        return c;
    }
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "Addition Overflow");
        return c;
    }
}
