pragma solidity ^0.8.0;
contract E8
{
    mapping (address => uint) public balances;
    uint _x;
    constructor (uint _x, uint _y) public {
        _x = _x;
        balances[msg.sender] = _x + _y;
    }

    function subtract (_x) public returns(uint) {
        uint _y = balances[msg.sender] / 10;
        balances[msg.sender] = _y * 10;
    }
}


```
