pragma solidity ^0.8.0;
contract Solidity
{
    uint128 public array;
    constructor() public
    {
        array = 99999999999999999999999999999999999999;
    }
    function arrayWithMutations() internal
    {
        uint128 newNum = array / 1e16;
        array = newNum * 2;
    }
}
