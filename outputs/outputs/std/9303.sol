pragma solidity ^0.8.0;
contract Solidity
{
    uint128 public a;
    constructor() public
    {
        a = 9999999999;
    }
    function aWithMutations() public returns(uint128)
    {
        a = a / (1e16 + 1);
        a = a * 79871;
        return a;
    }
}
