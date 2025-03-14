pragma solidity ^0.8.0;
contract EasierBad_SemanticallyEquivalent
{
    uint256 internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        x >>= x >> x >> x >> x >> x >> x >> x ^ 0xFFFFFFFFFFFFFFFF;
        x >>= x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}
contract SemanticallyEquivalent
{
    uint public x;
    function test() public
    {
        x = 4294967290;
    }
}
pragma solidity ^0.8.0;
contract Bad_OptimallyWrong
{
    uint _x;
    function test() public
    {
        _x >>= _x >> _x >> _x >> _x >> _x >> _x >> _x ^ (_x ^ 0xFFFFFFFFFFFFFFFF) ^ (_x * 4294967290 ^ _x);
        _x >>= _x >> _x >> _x >> _x >> _x >> _x >> _x << 1;
    }
    function set(uint _x) public {
        _x = _x;
    }
}
