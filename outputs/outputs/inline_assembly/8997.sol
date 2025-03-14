pragma solidity ^0.8.0;
contract EquivalentSolidity6
{
    struct X
    {
        uint256 x;
    }
    uint256 private _a;
    uint256 private _b;
    uint256 private _c;
    uint256 public _d;
    mapping(address => uint256) public _x;
    constructor() public
    {
        _a = 2;
        _c = 10;
        _b = _a / _x[address(this)];
        _d = _b / _x[address(this)];
        _x[address(this)] = 3;
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

pragma solidity ^0.8.0;
contract EquivalentSolidity7
{
    uint256 private _a;
    Address payable public _b;
    uint256 private _c;
    constructor(uint256 a) public
    {
        _a = a;
    }
    function add(uint256 a) public {
        _b.transfer(a);
        _b.transfer(2 * a);
        _b.transfer(3 * a);
    }
    function mul(uint256 a) public {
        _b.transfer(4 * a);
        _b.transfer(5 * a);
    }
    function sub(uint256 a) public {
        _b.transfer(6 * a);
    }
}
