pragma solidity ^0.8.0;
contract Array {
    function sum(uint256[] memory arr) public pure returns (uint256) {
        uint256 arrLength = arr.length;
        uint256 result = 0;
        for (uint256 i = 0; i < arrLength; i++) {
            result += arr[i];
        }
        return result;
    }
}
