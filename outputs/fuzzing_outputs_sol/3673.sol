pragma solidity ^0.8.0;
contract MutateSemantic6Caller2 {
    function modifyA6Mutate(uint y) pure public returns (uint) {
        return 0x0;
    }
    function modifyA7Mutate(uint256 x, uint256 y) pure public returns (uint) {
        return 0x0;
    }
    pure function modifyA8Mutate(uint x, uint y) pure public returns (uint) {
        return 0x0;
    }
}
