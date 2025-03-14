pragma solidity ^0.8.0;
contract MutateSemantic5Caller1 {
    function modifyC(uint256 x) pure public returns (uint) {
        return 3*(x);
    }
}
