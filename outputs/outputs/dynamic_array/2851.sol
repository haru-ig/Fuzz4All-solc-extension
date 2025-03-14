pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations {
    uint public i;
    uint[9] memory arr;
    uint[] private memory a;
    uint[] public memory b;
    uint constant j = 2;
    uint constant k = 3;
    constructor () public {
        i;
    }
    function fct () public override {
        i;
    }
    function fun (uint v, uint w) public {
        if (g(v) == 2) {
            arr[0] += 1;
        }
        else {
            arr[0] = 1;
        }
        if (g(w) > j)
            arr[0] += 1;
        else
            arr[0] = 3;
    }
    function g (uint v) public public pure returns (uint)
    {
        return v;
    }
    function g2 (uint x) public public pure returns (uint)
    {
        uint y = 3*x;
        if (y == 1 || y == 5) return 6*x;
        return 7*x;
    }
}
