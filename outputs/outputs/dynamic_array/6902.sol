pragma solidity ^0.8.0;
contract Test1 {
    struct B {
        S[] s;
    }
    struct S {
        uint x;
        string y;
    }
    constructor() {
        S memory s1;
        B memory b1;
        b1.s.push(s1);
        b1.s[1].x = 1;
        b1.s[2].x = 1;
    }
}
