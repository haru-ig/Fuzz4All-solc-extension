pragma solidity ^0.8.0;
contract E10
{
    uint public counter = 123;

    mapping (address => uint) public funds;
    constructor(uint _x) public {
        counter = _x;
    }
    function set(uint _x) public returns (bool)
    {
        counter = _x;
        funds[msg.sender] = _x * 10;
        return true;
    }
    function divideAndLog(uint _x) public returns (bool) {
        uint t = counter / 10;
        counter = t;
        return true;
    }
}
