pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    struct X
    {
        uint256 x;
    }
    constructor(uint256 x) public
    {
        x;
    }
    function test() public
    {
    }
    function get() public view returns (uint256)
    {
        return x;
    }
    function add(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x + b.x);
    }
    function mul(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x * b.x);
    }
    function sub(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x - b.x);
    }
}
