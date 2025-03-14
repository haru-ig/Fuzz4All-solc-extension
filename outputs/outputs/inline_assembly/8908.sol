pragma solidity ^0.8.0;
contract EasierGood
{
    uint internal x;
    message Set(uint _x) public { x = _x; }
    function doSomething() public { x += 1; x += 1; x += 1; x += 1; x += 1; x += 1; x += 1; x += 1; }
    function test() public {
        Set(x + 1);
        Set(x + 1);
        Set(x + 1);
        Set(x + 1);
        Set(x + 1);
        Set(x + 1);
        Set(x + 1);
        Set(x + 1);
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
    }
}
