pragma solidity ^0.8.0;
contract Computed2Solidity5
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    function mul() public pure returns(X memory)
    {
        return X(6);
    }
    function sub() public pure returns(X memory)
    {
        return X(5);
    }
    constructor() public
    {
        _b = _a / _x.x;
    }
    function add() public pure returns(X memory)
    {
        return X(7);
    }
}
