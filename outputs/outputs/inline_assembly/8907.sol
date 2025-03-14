pragma solidity ^0.8.0;
contract EasierBad
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {

        x <<= 8;
        x <<= 16;
        x <<= 24;
        x <<= 32;
        x <<= 40;
        x <<= 48;
        x <<= 56;
        x <<= 64;


        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}
