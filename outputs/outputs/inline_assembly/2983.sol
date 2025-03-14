pragma solidity ^0.8.0;
contract C {
    uint x = 5;
    function setX(uint _x) public {
        x += _x;
    }
    function getX() public view returns (uint) {
        x = 3;
        return x;
    }
}
