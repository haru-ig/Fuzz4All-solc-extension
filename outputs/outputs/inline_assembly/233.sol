pragma solidity ^0.8.0;
contract E12
{
    constructor (uint _x) public {
        funds[msg.sender] = 10;
    }

    modifier onlyE1(address _addr) {
        require(msg.sender == _addr);
        _;
    }

    mapping (address => uint) public funds;
    function divideAndLog(uint _x) public onlyE1(msg.sender) returns (bool) {
        uint mantissa_ = _x * (10**18);
        uint y_ = uint(uint(mantissa_)/10);
        if (mantissa_ == 10) {
            funds[msg.sender] = 10;
        } else {
            funds[msg.sender] = y_ - 1;
        }
        return true;
    }

    function returnFunds (address _addr) public onlyE1(_addr) {
        msg.sender.send(funds[_addr] * 10);
    }
}
```
