pragma solidity ^0.8.0;
contract Mutate3 {
    uint32[4] a;
    function mutateArray(uint32[] memory a) public pure {
        for (uint256 i = 0; i < a.length; i++) {
            a[i] += 1;
        }
    }
}
