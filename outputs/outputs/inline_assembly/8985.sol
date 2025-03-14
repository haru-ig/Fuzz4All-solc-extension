pragma solidity ^0.8.0;
contract EquivalentSolidity4
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    X public _x;
    function get(X memory x) public view returns (X memory)
    {
        return x;
    }
    function test() public
    {
        _a = 2;
        _b = _a / _x.x;
        _x.x = 3;
        _a = 3;
        _b = _a / _x.x;
    }
    function add(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x + b.x);
    }
    function mul(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x * b.x);
    }
    function sub(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x - b.x);
    }
}

pragma solidity ^0.8.0;
contract EquivalentSolidity4
{
    struct X
    {
        uint256 x;
    }
    X public _x;
    uint256 private _a;
    uint256 private _b;
    uint256 public _d;
    constructor() public
    {
        _a = 2;
        _b = _a / _x.x;
        _d = _b / _x.x;
    }

    modifier not(bool condition) {
        if (condition) {
            revert("the condition should be false");
        }
        _;
    }

    function get(X memory x) public view returns (
