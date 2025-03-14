pragma solidity ^0.8.0;
contract MutateSemantic6Caller4 {
    event Evt(uint a);
    function modifyC(uint256 x, uint256 y) public payable returns (uint256) {
        modifyC(x + 1 + 3, y);
    }
}
