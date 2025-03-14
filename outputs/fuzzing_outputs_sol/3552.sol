pragma solidity ^0.8.0;
contract MutateSemantic {
    function f() public returns (uint256 x) {}
    function modifyF() public payable returns (uint256 x) {}
    function modifyFToX(uint256 x) public {
        x = 10;
    }
}
