pragma solidity ^0.8.0;
contract E12
{
    mapping (address => uint) public funds;
    constructor(uint _x) public {
        funds[msg.sender] = _x * 10;
    }
    function divideAndLog(uint _x) public returns (bool) {
        uint y_ = funds[msg.sender] / 10;
        if (y_ == 10) {
            funds[msg.sender] = 10;
        } else {
            funds[msg.sender] = y_ - 1;
        }
        return true;
    }
}
