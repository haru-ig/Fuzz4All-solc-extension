pragma solidity ^0.8.0;
contract Mutate {
    uint32[] a;
    function mutateArray(uint32[] memory b) public pure { b[0] += 1;}
}
