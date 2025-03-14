pragma solidity ^0.8.0;
contract Test7 {
    struct S {uint[1] field;uint[1] method();};
    function f(uint x) {
        S memory s = S(field: uint[](1));
        uint[1] memory i = a(1);
        S memory s1 = S(a: uint[](1));
        S memory s2 = S();
        s.method[0] = s1.field[0] = s2.field[0];
    }
}
