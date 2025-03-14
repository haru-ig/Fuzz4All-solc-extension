pragma solidity ^0.8.0;
contract New {
    uint8 x;
    function new_(uint8 a) public pure returns(uint8 b) {
        b = 2*a;
    }
    function setX(uint8 a) public {
        x = a;
    }
}
