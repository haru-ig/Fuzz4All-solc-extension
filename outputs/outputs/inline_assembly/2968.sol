pragma solidity ^0.8.0;
contract C {
    uint x;
    function setX() public {
        x = 7;
    }
    function getX() public view returns (uint) {
        return x;
    }
}
