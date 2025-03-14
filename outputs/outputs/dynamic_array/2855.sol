pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations32 {
    uint public i;
    constructor () public {
        i;
    }
    function fct (uint[] memory m, uint j, uint k) public {
        if(k == 2)
        {
            byte[3] x;
            x[1] = 0x0;
            uint iii;
            (iii, x) = (iii + 1, x);
            uint ii = uint(iii);
        }

        else if (k > 3)
        {
            uint[4] x;
            x[1] = 0x0;
            (x[1] += 1, x) = x;
            uint ii;
            (ii, x) = x;

            uint iiii;
            (iii, uint[1] memory s) = (iii + 1, x);
        }

        else
        {
            uint kkk;
            (kkk, m[0]) = (kkk + 1, m);
        }



        i += 1;
    }
}
