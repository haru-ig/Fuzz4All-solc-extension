pragma solidity ^0.8.0;
contract DerivedMutatedArraysWithUnderscore {
    uint256 private inner;
    function innerAdd(uint256 value) public {
        inner += value;
    }
}
