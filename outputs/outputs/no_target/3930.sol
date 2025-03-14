pragma solidity ^0.8.0;
contract C {
    uint public x;
    constructor(uint _x, uint _x5) public {
        x = _x < 1? 0 : _x5 + _x5 + x;
    }
}
