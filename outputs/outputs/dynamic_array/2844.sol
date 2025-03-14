pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations17 {
    uint public i;
    memory public m;
    function fct (uint[2] memory x) public {
        if((i >= x[0] && i <= x[1] && i >= 2) || i > 0)
            i += 2;
        uint[] memory x2 = new uint[](1);
        uint[] memory x3 = m;
        x2[0] = 2;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations18 {
    uint public i;
    memory public m;
    function fct (uint[2] memory x) public {
        uint[] memory x2 = m;
        if((i >= x[0] && i <= x[1] && i >= 2) || i > 0)
            i += 2;
        uint[] memory x3 = m;
        x3[0] = 2;
    }
}
