pragma solidity ^0.8.0;
contract MutateSemantic4 is MutateSemantic2, MutateSemantic3 {
    function f() public returns (uint256 x) {
        x = 200;
    }
    function modifyF() public returns (uint256 x) {
        x = 100;
    }
    function modifyCF() public returns (uint8 a) {
        a = 3;
    }
}
