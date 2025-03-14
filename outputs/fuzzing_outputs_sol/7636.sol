pragma solidity ^0.8.0;
contract FallbackExecution2
{
    address public immutable addr;
    constructor(address _addr)
    {
        if(_addr == 0x0)
        {
            addr = _addr;
        }
        else
        {
            addr = 0x0;
        }
    }
}
