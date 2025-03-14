pragma solidity ^0.8.0;
contract Test7 {
    struct S {
        uint a;
        bytes b;
        uint c;
    }
    S[] a;
    constructor() {
        a[1] = S({a:1,b:toBytesS("data"),c:2});
        uint[] memory i1 = a;
        uint[] memory i2 = i1;
        uint[] memory i3;
        i3 = i2;
        i2 = i3;
    }
}
