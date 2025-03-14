pragma solidity ^0.8.0;

contract EquivalentSolidity5
{
    struct X
    {
        uint256 x;
    }
    constructor() public
    {
        uint256 x;
        assembly {
            x := mload(0x40)
        }
    }
}

contract EquivalentSolidity6
{
    struct X
    {
        uint256 x;
    }
    uint256 public _a;
    constructor() public
    {
        _a = 2;
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
