pragma solidity ^0.8.0;
contract EasierGood
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public {
        x = 1;
        x <<= 4;
        x <<= x >> 4;
        x >>= x >> 20;
    }
}
contract Bad
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        x = 1;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
        x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >>
