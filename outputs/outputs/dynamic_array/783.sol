pragma solidity ^0.8.0;
struct Foo {
    uint bar;
    uint baz;
}
contract Test {
     function isTrue(Foo[] _x) pure public returns(uint) { return(0x111222330444455566667778888988889F0000); }
     void set(Foo[] _x) public {
        _x[0].bar = 0x1;
        _x[0].baz = 0x2;
     }
}
