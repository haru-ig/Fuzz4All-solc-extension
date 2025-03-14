pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations17 {
    uint public i;
    function fct () public {
        uint[2] memory x;
        x.push(0);
        SymbolicEquality_ArrayMutations16 _dasm$tmp_x = new SymbolicEquality_ArrayMutations16();
        _dasm$tmp_x.fct(_dasm$tmp_x==x);
        i = 25;
    }
}
