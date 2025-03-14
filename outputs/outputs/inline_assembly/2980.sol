pragma solidity ^0.8.0;
contract C {
    uint x;
    function setX(uint _x) public {
        x += _x;
    }
    function getX() public view returns (uint) {
        return x;
    }
    function setX2(uint _x) public {
        x -= _x;
    }
    function subtrahX(uint _x) public {
        x += _x;
    }
}
