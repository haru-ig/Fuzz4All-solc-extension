pragma solidity ^0.8.0;
contract MutatedSolidity6
{
    struct X
    {
        bool flag;
    }
    uint256 private _a;
    uint256 public _b;
    uint256 public _c;
    uint256 public _d;
    uint256 public _e;
    uint256 public _f;
    struct Y
    {
        X one;
        X two;
        uint x;
    }
    constructor(uint _x) public
    {
        _a = _x % 2;
        _b = _a / _e;
        _c = _x / _b;
        _d = _b * _a;
        _e = _c * _b;
        _f = _c + _e;
    }
    function add(uint _x, bool _y) public pure returns(X memory)
    {
        X memory zero_value = X(0);
        return X(X(7).flag? 1 : X(4).flag? zero_value : 0);
    }
    function set1(X _one_copy) public
    {
        _x = _one_copy.one.x;
    }
    function set2(X _two_copy) public
    {
        _two = _two_copy.two.x;
    }
    function get_x() private view returns (X memory)
    {
        return X(11);
    }
    function get_two()  private view returns (X memory)
    {
        return X(6);
    }
    function get_f() private view returns (X memory)
    {
        return X(3);
    }
    function mul() public pure returns(X memory)
    {
        return X(8);
    }
    function zero() public pure returns(X memory)
    {
        return X(0);
    }
    function sub() public pure returns(X memory)
    {
        return X(2);
    }
    struct X
    {
        bool flag;
    }
    struct InnerStruct
    {
        bool flag;
    }
    constructor() public
    {
        InnerStruct memory _two = InnerStruct(87);
        _two.flag = true;
        set1
