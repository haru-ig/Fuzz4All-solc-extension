pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations20_1 {
    uint[5] a;
    constructor () public {
        uint l;
        uint h;
        a[0] = 42;
        l = 56462234;
        l++;
        h = (l - 18) * (l - 2);
        a[h] = 2;
    }
    function fct() public {
        uint l;
        uint h;
        uint i;
        a[0] = 42;
        l = 56462234;
        l++;
        h = (l - 18) * (l - 2);
        for (i = 0; i < a.length - 1; ++i) {
            a[i] = 2;
        }
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations {

    uint j;
    uint i;
    uint[] memory j_arr;
    uint k;
    uint[] memory j_arr_not;
    uint l;
    uint[] memory j_arr_arr;
    uint m;
    uint[] memory j_arr_arr_not;
    function i_k(uint j) public {
        i = j;
        j = j + 14;
        k = j + 27;
        j--;
    }
    function i_k2(uint j) public {
        i = j;
        j = j + 254;
        k = j + 295;
        j--;
    }
    function j_k(uint j) public {
        j = j + 223;
        k = j + 4;
        j = j + 123;
        k = k - 12;
    }
    function j_l_arr(uint j) public {
        j = j + 564622;
        l = j + 7;
