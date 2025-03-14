pragma solidity ^0.8.0;
contract MutatedSolidity5
{
    struct X
    {
        uint256 x;
    }
    mapping(uint256=>uint256) private _a;
    uint256 public _b;
    uint256 public _c;
    uint256 public _d;
    uint256 private _x;
    constructor() public
    {
        mapping(uint256=>uint256) memory _x;
        _b = _a / _x;
        _d = _x / _b;
        _x = 3;
    }
    function add() public pure returns(X memory)
    {
        _x = 7;
        return X(7);
    }
    function mul() public pure returns(X memory)
    {
        X memory x;
        assembly {
            mstore(add(_a, 3), 6)
            mstore(x, 6)
        }
        return x;
    }
    function sub() public pure returns(X memory)
    {
        _x = 5;
        return X(5);
    }
}

```
## Using Solidity Debugger

Solidity debugger is a Solidity IDE, with functionality that allows you to test, inspect, and manipulate contracts in the Solidity playground.
