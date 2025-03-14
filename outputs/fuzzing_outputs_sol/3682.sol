pragma solidity ^0.8.0;
contract MutateSemantic7 {
    function test() internal pure returns (uint) {
        uint y;
        y = MutateSemantic7Caller4.modifyB7Mutate(1, 2);
        y = MutateSemantic7Caller4.modifyB8Mutate(3, 4);
        y = y + MutateSemantic7Caller4.modifyB7Mutate(5, 6);
        return y;
    }
}
