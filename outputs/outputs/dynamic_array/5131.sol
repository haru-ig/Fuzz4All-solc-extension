pragma solidity ^0.8.0;
contract Test5046Bug {
    struct A {
        uint8[10][10] array;
    }
    function f() public pure {
        A memory a;
        a.array[0][0] = 2;
        a.array[0][0] = 3;
    }
    function g() public pure {
        A memory a;
        a.array[0][0] = 2;
        a.array[4][4] = 3;
    }
}
