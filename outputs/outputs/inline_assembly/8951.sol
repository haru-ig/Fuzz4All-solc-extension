pragma solidity ^0.8.0;
contract EquivalentSolidityMutated
{
    struct X
    {
        uint256 x;
    }
    X x = X(12);
    X set(X memory x) public pure returns (X memory)
    {
        return x;
    }
    function test(X memory x) public pure
    {
        m.x;
        m.x % m.x;
        m.x * m.x;
        m.x / m.x;
    }
    uint256 constant get = x.x;
}
