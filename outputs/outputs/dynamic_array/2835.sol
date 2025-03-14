pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations15 {
    uint public i;
    function fct (uint[2] calldata x) public {
        if(i > x[0] && i <= x[1] && i > 2)
            i = 25;
    }
}
contract SymbolicEquality_ArrayMutations15 {
    uint public i;
    uint [4] x;
    uint [3] memory y;
    uint [4] memory z;

    function fct (uint[2] memory x) public {
        if(i > x[0] && i <= x[1] && i > 2)
            i = 25;
    }
    function fct (uint[2] calldata x) public {
        if(i > x[0] && i <= x[1] && i > 2)
            i = 25;
    }
    function fct (uint[4] memory x) public {
        if(i > x[0] && i <= x[1] && i > 2)
            i = 25;
    }
    function fct (uint[4] calldata x) public {
        if(i > x[0] && i <= x[1] && i > 2)
            i = 25;
    }
    function fct (uint[3] memory x) public {
        if(i > x[0] && i <= x[1] && i > 2)
            i = 25;
    }
    function fct (uint[3] calldata x) public {
        if(i > x[0] && i <= x[1] && i > 2)
            i = 25;
    }
}
