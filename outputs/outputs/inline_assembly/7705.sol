pragma solidity ^0.8.0;

contract L20 {
    uint public constant value = 3;
    uint public x = 5;

    function setX(uint _x) public {
        x = _x;
    }

    function sub(uint x, uint y) public {
        x -= value;
    }
}
