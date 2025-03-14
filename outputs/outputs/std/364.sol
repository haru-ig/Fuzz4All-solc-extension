pragma solidity ^0.8.0;
contract Mutate {
    function mutateArray(uint32[] memory a) public pure {
        a[2] = 2;
    }
