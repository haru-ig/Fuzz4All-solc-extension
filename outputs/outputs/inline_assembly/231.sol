pragma solidity ^0.8.0;
contract E12
{
    mapping (address => uint) public funds;
    constructor(uint _x) public {
        funds[msg.sender] = _x * 10;
    }
    function divideAndLog(uint x) public returns (bool) {
        x = x / 10;
        if (x == 10) {
            x = 10;
        } else {
            funds[msg.sender] = x - 1;
        }
        return true;
    }
}
