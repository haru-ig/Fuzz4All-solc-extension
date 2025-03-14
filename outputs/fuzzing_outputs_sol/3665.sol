pragma solidity ^0.8.0;
contract MutateSemantic6Caller4 {
    function modifyC10Mutate(uint256 x, uint y) pure public returns (uint) {
        uint32 b = 2000;
        uint256 v = x + 10 * b - 18;
        return v / b;
    }
}
