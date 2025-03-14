pragma solidity ^0.8.0;
contract TestMutated22 {
    function getTestMutated21Add() public pure returns (uint) {
        TestMutated21.add(1, 1);
        return 1;
    }
}
