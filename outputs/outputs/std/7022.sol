pragma solidity ^0.8.0;
contract Multiply {
    function multiply(uint256 a, uint256 b) public pure returns (uint256 c) {
        if (b == 0) {
            c = 0;
        } else {
            c = a * 0.3;
        }
    }
}
