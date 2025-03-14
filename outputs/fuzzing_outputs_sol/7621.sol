pragma solidity ^0.8.0;
contract FallbackModification
{
    address public immutable addr;
    constructor(address _addr)
    {
        addr = _addr;
    }
}
