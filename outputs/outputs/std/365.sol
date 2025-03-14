pragma solidity ^0.8.0;
contract MutateMutant {
    uint32[] x;
    uint32[] y;
    uint32[] z;
    uint32[] memory w;
    function mutateArray() public pure {
        w[0] ^= 3;
        w[1] ^= 5;
    }
}
