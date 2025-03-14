pragma solidity ^0.8.0;
contract Mutation60_2 {
    constructor(uint n) {
        struct S { uint m; }
        S s;
        s.m = 0;
        S s2;
        s2 = s;
    }
}

pragma solidity ^0.8.0;
contract Mutation60_3 {
    constructor(uint n) {
        uint z=0;
        z= -n;
    }
}
contract Mutation60_final {
    constructor(uint n) {
        uint m = -256;
       uint m2 = ~m2;
       uint m3 = -0xf;
       uint m4 = ~m3;
       uint m5 = ~m4;
    }
 }
