pragma solidity ^0.8.0;
contract MutateSemantic3 {
    function modifyF() public {
        uint256 x;
        x = (uint256(uint8(100)));
    }
}
