pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations16 {
    uint public i;
    uint[5] public x;
    function fct (uint[][] memory x) public {
        i = x[0][1][0];
        for(uint k = 1; k < 3; k++)
            if(x[k][1][2] > 1)
                x[k][1][2] = 1;
        require(i == x[2][1][3]);
    }
}
