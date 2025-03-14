pragma solidity ^0.8.0;
contract MutateSemantic7Caller1 {
}
contract MutateSemantic7Caller2 {
    function modifyC1(uint x, uint256 y, uint32 z) pure public returns (uint) {
        return z*(x+y);
    }
    function modifyC3(uint x, uint y, uint z) pure public returns (uint) {
        return (8*x)*y;
    }
    function modifyC7(uint x, uint256 y) pure public returns (uint) {
        return (9*x)*y;
    }
}
