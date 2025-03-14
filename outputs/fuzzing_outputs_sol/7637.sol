pragma solidity ^0.8.0;
contract FallbackExecution
{
    address public immutable addr;
    constructor(address _addr) internal
    {
        addr = _addr;
    }
}
