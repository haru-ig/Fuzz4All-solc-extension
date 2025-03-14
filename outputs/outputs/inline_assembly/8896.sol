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
        x >>= x >> x >> x >> x >> x >> x >> x;
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
contract BetterBad_OptimallyWrong
{
    uint public x;
    function test() public
    {
        x >>= x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x;
        x >>= x >> x >> x >> x >> x >> x >> x;
    }
    function set(uint _x) public {
        x = _x;
    }
}
contract Better
{
    uint public x = 4294967290;
    function test() public
    {
        x >>= x >> x
