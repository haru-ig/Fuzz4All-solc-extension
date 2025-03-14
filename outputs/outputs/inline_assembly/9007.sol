pragma solidity ^0.8.0;
contract EquivalentSolidity6
{
    struct X
    {
        uint256 x;
    }
    uint256 x;
    constructor() public
    {
        x = 4;
    }
    function add() public pure returns(X memory)
    {
        X memory _x;
        _x.x = 7;
        return _x;
    }
    function mul() public pure returns(X memory)
    {
        X memory _x;
        _x.x = 6;
        return _x;
    }
    function sub() public pure returns(X memory)
    {
        X memory _x;
        _x.x = 5;
        return _x;
    }
    function call() public view returns(X memory)
    {
        X memory _x;
        _x.x = 9;
        return _x;
    }
    function pure() public pure returns(X memory)
    {
        X memory _x;
        _x.x = 9;
        return _x;
    }
    function callPure() public pure returns(X memory)
    {
        X memory _x;
        _x.x = 10;
        return _x;
    }
}
