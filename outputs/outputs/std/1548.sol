pragma solidity ^0.8.0;
contract MutatedMutatedMutated {
    uint256 public immutable test = 7;
    function myInit2(uint256 a) public {
        test = a * test;
    }
}
