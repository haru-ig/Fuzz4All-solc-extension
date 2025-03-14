pragma solidity ^0.8.0;
contract MutatedSolidity7
{
    struct X
    {
        uint256 x;
    }
    X _x;
    X _y;
    X _z;
    X _w;
    X _a;
    X _b;
    X _c;
    X _d;
    function X() public
    {
        _x = X(3);
        _y = _x;
        _z = _y;
        _w = 1 + (_y / _x);
        _a = _x;
        _b = 1 + (_a / _c);
        _c = (_z / _d) * (_z / _z) * (_z / _z);
        _d = 1 + (_c * _a / _z);
    }
    function mul() public pure returns(X memory)
    {
        return X(0);
    }
    function add() public pure returns(X memory)
    {
        return X(3);
    }
    function sub() public pure returns(X memory)
    {
        return X(2);
    }
}
