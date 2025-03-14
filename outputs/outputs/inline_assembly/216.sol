pragma solidity ^0.8.0;
contract E8H
{
    uint public counter;
    constructor() public {
        counter = 123;
    }
    function set(uint _x) public {
        counter = _x;
    }
    function multiplyAndLog(uint _x) public {
        uint t = counter * 2;
        counter = t;
    }
}
