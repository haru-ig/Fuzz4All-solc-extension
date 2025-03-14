pragma solidity ^0.8.0;
contract C {
    uint x = 5;
    function setX(uint _x) public {
        x = _x * 10;
    }
    function getX() public view returns (uint) {
        return x / 10;
    }
}
