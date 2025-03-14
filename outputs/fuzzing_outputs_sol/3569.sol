pragma solidity ^0.8.0;
contract MutateSemantic4 {
    function modifyF() public {
        uint8 x = (uint(uint8(100)));
    }
}
