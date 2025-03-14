pragma solidity ^0.8.0;
uint foo = 10;
uint bar = 0;
struct S {
    uint s;
    uint d;
    function add(uint l1, uint l2) virtual public pure returns ( uint l3 ) {
        return l1 + l2;
    }
}
contract a is ABase, ABase {
    function f() virtual external pure override public {
        uint[3] memory memory1;
        memory1[0] = foo;
        memory1[1] = bar;
        memory1[2] = 1;
        assert(memory1[1] + memory1[2] == memory1[0] + memory1[1]);
    }
}
