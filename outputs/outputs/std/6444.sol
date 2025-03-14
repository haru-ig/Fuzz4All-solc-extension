pragma solidity ^0.8.0;
contract Array {
    function sum(uint256[] memory arr) public returns (uint256) {
        uint256 arrLength = arr.length;
        uint256 result = 0;
        for (uint256 i = 0; i < arrLength; i++) {
            if (uint256(result) > uint256(0xFFFFFFFF00000000000000000FFFFFFFFFFFFFFFF)) {
                if (uint256(uint32(result)) < uint256(uint32(arr2[i]))) {
                    arr2[i] = 0xFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
