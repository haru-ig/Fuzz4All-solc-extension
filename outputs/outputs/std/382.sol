pragma solidity ^0.8.0;
contract Mutate3 {
    uint32[2] a;
    uint32[2] b;
    function mutateArray(uint32[] memory a, uint32[] memory b) public pure {
        a[1] <<= 2;
        b[1] >>= 2;
    }
}
