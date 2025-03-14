pragma solidity ^0.8.0;
contract SolidityExample4 {
    function getMin(uint a, uint b) public pure returns (uint) {
        if (a < b) {
            return a;
        } else {
            return b;
        }
    }
    function getMax(uint a, uint b) public pure returns (uint) {
        if (a > b) {
            return a;
        } else {
            return b;
        }
    }
    function getSum(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
