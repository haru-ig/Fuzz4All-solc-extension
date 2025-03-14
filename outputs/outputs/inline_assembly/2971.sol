pragma solidity ^0.8.0;
contract C {
    uint8 internal x;
    function setX() public {
        x = 7;
    }
    function getX() public view returns (uint8) {
        return x;
    }
}
