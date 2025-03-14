pragma solidity ^0.8.0;
contract C {
    uint[] array;
    uint public x;
    uint public y;
    function getX() public view returns (uint) {
        return x;
    }
    function setX(uint _x) public {
        x = _x;
    }
}
*
