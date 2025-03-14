pragma solidity ^0.8.0;
contract MutateSemantic {
    uint32[1] b;
    function mutateArray(uint32[] memory b) public pure {
        b[0] += b[0];
    }
}
