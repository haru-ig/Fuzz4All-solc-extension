pragma solidity ^0.8.0;
contract D {
    uint constant x = 80;
    function setX(uint _x) public {
        uint y = x * _x;
        x = 6;
        y = 3;
        x = 1;
        y = 0;
    }
}
