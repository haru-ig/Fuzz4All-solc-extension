pragma solidity ^0.8.0;
contract MutatedSolidity8
{
    struct X
    {
        uint256 x;
    }
    modifier if_non_null(address a)
    {
        require(a!= address(0), "non-null");
        _;
    }
    modifier return_null(address a)
    {
        require(a == address(0), "not null");
        _;
    }
    uint256 public _x;
    uint256 public _y;
    uint256 private _z;
    uint256 private _w;
    constructor() public
    {
        X memory x = X(6); if_non_null(x);
        _z = x.x + _x / x.x;
        _w = _x / (x.x + _x / x.x);
        _x = 2; if_non_null(x.x);
        _y = 2; if_non_null(x.x);
    }
    function add() public pure returns(X memory)
    {
        return X(6);
    }
    function mul() public pure returns(X memory)
    {
        return X(0);
    }
    function sub() public pure returns(X memory)
    {
        return X(1);
    }
}

pragma solidity ^0.8.0;
contract Mutated Solidity8
{
    struct X
    {
        uint256 x;
    }
    uint256 public _x;
    uint256 public _y;
    uint256 private _z;
    uint256 private _w;
    constructor() public
    {
        X memory x = X(6);
        _z = x.x + _x / x.x;
        _w = _x / (x.x + _x / x.x);
        _x = 2;
        _y = 2;
    }
}
