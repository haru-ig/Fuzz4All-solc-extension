pragma solidity ^0.8.0;
contract EasierBad_NonOptimallyWrong
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}
