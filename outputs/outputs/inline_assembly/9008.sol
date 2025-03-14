pragma solidity ^0.8.0;
contract EquivalentSolidity6
{
    struct Y
    {
        uint256 y;
    }
    uint256 private _a;
    uint256 private _b;
    uint256 private _c;
    uint256 public _x;
    constructor() public
    {
        _b = _a / _c;
        if( _b % 2 == 0)
        {
            _b = _b * 2;
        }
    }
    function addToX() public pure returns(X memory)
    {
        return X(7);
    }
    function mulToX() public pure returns(X memory)
    {
        return X(6);
    }
}
