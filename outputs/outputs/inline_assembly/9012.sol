pragma solidity ^0.8.0;
contract EquivalentSolidity5
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    uint256 private _c;
    uint256 public _d;
    X public _x;
    constructor() public
    {
        _b = _a / _x.x;
        _d = _x.x / _b;
        _b = _b * 10;
        _x.x = 3;
    }
    function add() public pure returns(X memory)
    {
        return X(7);
    }
    function mul() public pure returns(X memory)
    {
        return X(5);
    }
    function sub() public pure returns(X memory)
    {
        return X(6);
    }
}

pragma solidity ^0.8.0;
contract EquivalentSolidity5
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    uint256 private _c;
    uint256 public _d;
    X public _x;
    constructor() public
    {
        _b = _a / _x.x;
        _b += 1;
        _x.x = 3;
    }
    function add() public pure returns(X memory)
    {
        return X(7);
    }
    function mul() public pure returns(X memory)
    {
        return X(5);
    }
    function sub() public pure returns(X memory)
    {
        return X(6);
    }
}
