pragma solidity ^0.8.0;
contract MutateSemantic5Caller3 is MutateSemantic5Caller2 {
    function modifyC2(uint x, uint y) pure public returns (uint) {
        return (x + y)*5;
    }
}
