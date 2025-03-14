pragma solidity ^0.8.0;
contract MutatedVersionOfSame
{
    address sender;
    uint z;
    modifier onlySender
    {
        sender = msg.sender;
        _;
    }
    constructor() public
    {
        z = 5;
        x = 1;
    }
    function update(uint _x) public onlySender
    {
        x = _x;
        z = x + x;
        assert(z == 3);
    }
}
