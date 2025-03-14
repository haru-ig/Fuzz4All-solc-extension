pragma solidity ^0.8.0;
contract MutateSemantic6Caller2 {
    event Evt(uint a);
    function modifyC(uint256 x, uint256 y) public payable {
        modifyC(x + 4, y);
    }
}
