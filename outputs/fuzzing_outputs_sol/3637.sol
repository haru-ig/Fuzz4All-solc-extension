pragma solidity ^0.8.0;
contract MutateSemantic5Caller3 {
    function modifyC(uint256 x, uint y) pure public returns (uint) {
        return 2*(x) + y;
    }
}
