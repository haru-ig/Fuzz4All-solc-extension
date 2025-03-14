pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations19_19 {
    uint memory a = {5, 9, 19, 3, 2};

    function fct(uint x) public {
        a[x] = x * a[x] * x;
    }
}
