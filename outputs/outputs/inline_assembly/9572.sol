pragma solidity ^0.8.0;
struct MyStruct {
    uint32 m1;
    uint32 m2;
}
contract Foo {
    mapping(uint => bool) b;
    mapping(uint => bool) c;
    uint x;

    constructor () {
        x = 11;
        b[3] = true;
        c[4] = true;
    }
    function set(uint i) public returns (uint) {
        (uint x, uint y) = foo();
        return 1 << i | x | y;
    }
}
