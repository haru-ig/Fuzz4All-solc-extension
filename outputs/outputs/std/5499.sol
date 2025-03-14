pragma solidity ^0.8.0;

contract Mutate10 {
    struct A {
        uint f[64];
    }
    uint8 counter = 4;
    struct M {
        A memory a;
    }


    constructor() {
        M memory temp = M({a: A({f: new uint8[](64){}})}));
    }
    function test(A memory x) public returns (uint8, bool) {
        bool r = x.f[0];
        x.f[0] = x.f[5];
        x.f[5] = x.f[0];
        return (counter++, r);
    }
}
