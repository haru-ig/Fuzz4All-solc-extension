pragma solidity ^0.8.0;
contract EquivalentSolidity6
{
    struct X
    {
        uint256 x;
        uint256 y;
    }
    uint256 private xFactor;
    uint256 private yFactor;
    uint256 private x;
    uint256 private y;
    uint256 public x0;
    constructor() public
    {
        xFactor = 1;
        yFactor = 2;
        x = 7;
        y = 1;
        x0 = x * xFactor;
    }

    function add() public pure returns(X memory)
    {
        return X(7, x*xFactor);
    }
    function mul() public pure returns(X memory)
    {
        return X(6*y, x*yFactor);
    }
    function sub() public pure returns(X memory)
    {
        return X(5*y, x*yFactor);
    }
}
