pragma solidity ^0.8.0;
contract basic
{
    function payable() public pure {}
    function nonpayable() public pure {}
}
contract base
{
    function() external pure {}
}
contract simplefallback
{
    constructor() {}
    function () external pure { revert("I need something to fallback."); }
}
