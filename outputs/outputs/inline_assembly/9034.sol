pragma solidity ^0.8.0;
contract MutatedSolidity7
{
    struct X
    {
        X(uint256 _y)
        {
            x = _y;
        }
    }
    struct Y
    {
        uint256 x;
    }
    uint256 public _z;
    uint256 public _x;
    uint256 public _y;
    uint256 public _w;
    constructor() public
    {
        _x = _z;
        _y = _x;
        _z = 3;
        _w = _x;
    }
    function add() public pure returns(X memory)
    {
        X memory x;
        x.x = _y;
        return x;
    }
    function sub() public pure returns(X memory)
    {
        X memory x;
        x.x = _x + 1;
        return x;
    }
    function mul() public pure returns(X memory)
    {
        Y memory a;
        a.x = _x * _x;
        return X(a.x);
    }
}

pragma solidity ^0.8.0;
contract MutatedSolidity8
{
    struct X
    {
        uint256 x;
    }

    uint256 _x;
    uint256 _z;
    uint256 _y;
    uint256 _w;
    constructor() public
    {
        _x = _y * _z;
        _z = 1;
        _y = 1;
        _w = 1;
    }
    function add() public pure returns(X memory)
    {
        X memory x;
        x.x = 2;
        return x;
    }
    function sub() public pure returns(X memory)
    {
        X memory x;
        x.x = _x + 4;
        return x;
    }
    function mul() public pure returns(X memory)
    {
        Y memory a;
        a.x = _x * _y;
        return X(a.x);
    }
}
