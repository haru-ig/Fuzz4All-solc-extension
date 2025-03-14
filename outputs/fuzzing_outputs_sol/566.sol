pragma solidity ^0.8.0;
contract TestFallbackState1
{
    uint256 state;
    constructor ()
    {
        state = 1;
    }
    function f(uint256 z) public virtual
    {
        state = addl(z);
    }
    function addl(uint256 i) public pure virtual
    {
        return i;
    }
}
