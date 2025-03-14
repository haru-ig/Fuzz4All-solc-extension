pragma solidity ^0.8.0;
contract MutatedBad
{
    uint internal x = 0x10000000000000;
    function test() public
    {
        x <<= 8;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x >> x;
    }
    event SetX(uint _x);
    function set(uint _x) public {
        emit SetX(_x);
        x = _x;
    }
}
