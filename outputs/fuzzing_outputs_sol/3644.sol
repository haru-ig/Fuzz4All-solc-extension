pragma solidity ^0.8.0;
contract MutateSemantic5Caller1 {
    function modifyC(uint256 x, uint y) pure public returns (uint) {
        return 3*(x) + y;
    }
}
