pragma solidity ^0.8.0;
contract TestFallback6
{
    TestFallback5 public o;
    uint256 public min;
    address payable public payed;
    constructor () constructor(TestFallback5 _o)
    {
        o = _o;
        min = 1;
        payed = payable(address(this));
    }
    fallback function() public payable
    {
        o.g();
    }
}
