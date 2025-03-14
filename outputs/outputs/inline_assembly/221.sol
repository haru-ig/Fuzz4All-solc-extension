pragma solidity ^0.8.0;
contract E10
{
    uint public counter = 123;
    mapping (address => uint) public funds;
    uint internal getCount() internal {
        return counter;
    }
    constructor(uint _x) public {
        counter = _x;
    }
    function set(uint _x) public returns (bool) {
        counter = getCount() * 10 + _x;
        funds[msg.sender] = _x * 10;
        return true;
    }
    function divideAndLog(uint _x) public returns (bool) {
        uint t = getCount();
        counter = t * 10 + counter / 10;
        return true;
    }
}
