pragma solidity ^0.8.0;
contract MutateSemantic7Caller4 {
    function modifyB7Mutate(uint256 x, uint y) pure public returns (uint) {
        y = 100;
        return 0x0;
    }
    function modifyB8Mutate(uint x, uint y) pure public returns (uint) {
        return 0x0;
    }
}
