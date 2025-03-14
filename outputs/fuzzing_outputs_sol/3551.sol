pragma solidity ^0.8.0;
contract MutateSemantic2 {
    function f() public returns (uint256 x) {
        x = 10;
    }
    function modifyF() public returns (uint256 x) {
        x = 10;
    }
}
