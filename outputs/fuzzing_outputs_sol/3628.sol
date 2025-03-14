pragma solidity ^0.8.0;
contract MutateSemantic5Caller4 {
    function modifyC(uint256 x, uint y) public pure returns (uint256) {
        return x * 2 + y;
    }
    function modifyD(uint x, uint y) public pure returns (uint256) {
        return modifyC(x, y);
    }
    function modifyE(uint256 x, uint y) public pure returns (uint256){
        return modifyC(x, y+2);
    }
}
