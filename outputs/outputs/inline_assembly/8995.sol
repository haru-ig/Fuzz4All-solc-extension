pragma solidity ^0.8.0;
`



contract EquivalentSolidity7
{
    uint256 private _c;
    uint256 private _b;
    uint256 private _a;
    uint256 public _d;
    X public _x;
    constructor() public
    {
        _c = 15;
        _a = 5;
        _b = _a / _x.x;
        _d = _b / _x.x;
        _x.x = 3;
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
