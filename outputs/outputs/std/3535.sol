pragma solidity ^0.8.0;
contract Array {
    function min(uint256 x) public pure returns (uint256) {
        return x;
    }
    function max(uint256 x) public pure returns (uint256) {
        return x;
    }
    function sum(uint256[] memory a) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < a.length; i++)
            sum += a[i];
        return sum;
    }
    function arrayLength(uint256[] memory a) public pure returns (uint256) {
        return a.length;
    }
}
