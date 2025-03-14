pragma solidity ^0.8.0;
contract MutatedSolidity8
{
    struct X
    {
        uint256 a;
        uint256 b;
    }
    uint256 public _x;
    uint256 private _y;
    uint256 private _z;
    uint256 private _w;
    Constructor() public
    {
        memory memory1 = X(0.125, 0.125);
        a = uint0x345;
        b = uint0xb;
        _x = memory1.a + memory1.b;
        _y = _x + _x;
        _z = _x + _x + _y;
        _w = _x + _x + _x + _z;
    }
    Function() public
    {
        x = uint0x555;
        y = x + x;
        z = x + x + y;
        w = x + x + x + z;
    }
    X memory memory1 = X(0.125, 0.125);
    function add() public pure returns(X memory)
    {
        return X(uint0x987, uint0xb12);
    }
    function mul() public pure returns(X memory)
    {
        return X(0, 0);
    }
    function sub() public pure returns(X memory)
    {
        return X(0, 0.99);
    }
}

pragma solidity ^0.8.0;
contract MutatedSolidity9
  {
    struct X
    {
        uint256 a;
        uint256 b;
    }
    uint256 private _x;
    uint256 public _y;
    uint256 public _z;
    uint256 public _w;
    uint256 private _v;
    struct Y
    {
        uint256 x;
        uint
