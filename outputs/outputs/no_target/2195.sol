pragma solidity ^0.8.0;
contract Test {
    function mod(uint256 x, uint256 y) public pure returns (uint256) {
        if (x % y > 0) {
            return x % y;
        } else {
            return x / y;
        }
    }
}
