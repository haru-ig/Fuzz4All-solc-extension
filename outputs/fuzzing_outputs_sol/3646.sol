pragma solidity ^0.8.0;
contract MutateSemantic5Caller {
    function modifyC(uint x, uint y) pure public returns (uint) {
        return 3*(x) + y;
    }
}
