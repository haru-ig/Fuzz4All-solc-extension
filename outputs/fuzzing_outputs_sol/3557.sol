pragma solidity ^0.8.0;
contract MutateSemantic4 {
    function modifyF() public returns (uint256 x) {
        x = 100;
        uint32 a;
        a = 3;
    }
}
