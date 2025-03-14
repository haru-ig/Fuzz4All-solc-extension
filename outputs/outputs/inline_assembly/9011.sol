pragma solidity ^0.8.0;
contract EquivalentSolidity6
{
    struct X
    {
        uint256 x;
    }
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 public d;
    X x;
    constructor() public
    {
        a = 9 / x.y;
        b = x.y / 9;
        c = 6;
    }
    function add() public pure returns(X memory)
    {
        return X(7);
    }
    function mul() public pure returns(X memory)
    {
        return X(6);
    }
    function sub() public pure returns(X memory)
    {
        return X(5);
    }
}
