pragma solidity ^0.8.0;
contract MutatingReturnsArraysWithoutReleasingMemoryStruct {
    struct Test {
        uint256 _uint256;
    }
    function subtractStruct(Test memory x) public returns (Test memory y) {
        y = x;
        y._uint256 = y._uint256 - 1;
        return y;
    }
}
