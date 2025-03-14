pragma solidity ^0.8.0;
contract MutatedDynamicArraysV2 {
    uint256 x;
    uint256[3] y;
    function f() public view {
        x = 55;
    }
}
