pragma solidity ^0.8.0;
contract MutateSemantic5Caller5 {
    function modifyD(uint256 x, uint y) public pure returns (uint256) {
        return (x / 2 + 1) * 2*y;
    }
}
