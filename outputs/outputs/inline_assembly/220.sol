pragma solidity ^0.8.0;
contract E10
{
    uint public counter = 123;
    mapping (address => uint) public funds;
    constructor(uint _value) public {
        funds[msg.sender] = _value;
    }
    function set(uint _value) public returns (bool)
    {


        counter = _value;
        funds[msg.sender] = _value;
        return true;
    }
    function divideAndLog(uint _value) public returns (bool) {
        uint t = counter / 10;
        counter = t;
        return true;
    }
}
