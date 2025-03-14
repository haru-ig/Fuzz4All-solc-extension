pragma solidity ^0.8.0;
contract MutateSemantic6Caller3 {
    event Evt(uint a);
    function modifyD(uint256 x, uint256 y) public payable {
     modifyD(x);
    }
    function modifyE(uint, uint256) public {
        modifyE();
    }
}
