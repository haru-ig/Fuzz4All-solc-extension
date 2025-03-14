pragma solidity ^0.8.0;
contract E7H4
{
    uint public counter = 123;
    mapping (address => uint) public funds;



    constructor(uint _x)
    {
        counter = _x;
    }
    function set(uint _x) public returns (bool)
    {
        counter = _x;
        funds[msg.sender] = _x;
        return true;
    }
    function multiplyAndLog(uint _x) public returns (bool) {
        uint t = counter * 2;
        counter = t;
        log(address(this).balance);
        return true;
    }
}
