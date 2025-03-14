pragma solidity ^0.8.0;
contract Mutate2 {
    uint32[2] b;
    function mutateArray(uint32[] memory b) public pure {
        b[1] *= 2;
    }
}
