pragma solidity ^0.8.0;
contract C {
    uint public x;
    function setX() public {
        x = 7;
    }
    function getX() public view returns (uint) {
        return x;
    }
}
