pragma solidity ^0.8.0;
contract Mutate {
    uint32[] a;
    function mutateArray(uint32[] memory b) public pure {
        uint256 i = b[0]; b[0] = b[b.length - 1]; b[b.length - 1] = i;
    }
}
