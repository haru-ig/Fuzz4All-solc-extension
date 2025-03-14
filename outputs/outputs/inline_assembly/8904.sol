pragma solidity ^0.8.0;
contract EasierBad
{
    uint public x;

    constructor() public
    {
        x = 4294967290;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x;
    }

    function set(uint256 _x) public {
        x = _x;
    }

    function test() public {
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x >> x >> x;
    }

    function set(uint256 _x) public {
        x = _x;
    }
}
