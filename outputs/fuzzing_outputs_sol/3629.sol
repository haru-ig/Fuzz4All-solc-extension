pragma solidity ^0.8.0;
contract MutateSemantic5Caller4 {
    function modifyC(uint256 x, uint y) public pure returns (uint256) {
        return 2*x + y;
    }
}
