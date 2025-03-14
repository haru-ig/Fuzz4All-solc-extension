pragma solidity ^0.8.0;
contract MutationMod
{
    uint256 public a;
    uint8 public s;
    constructor(uint256 _a) { a = _a; }
    function f3() public nonpayable
    {
        s = 1;
        s = 0;
        uint256 tmp = a;
    }
    function f5() public payable
    {
        uint256 b = msg.value;
    }
}
