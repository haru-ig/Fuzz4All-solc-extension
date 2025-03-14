pragma solidity ^0.8.0;
contract Mutator {
    int public a;
    constructor() {
        a = 0x80000000000000000000000000000000000000000000000000000000000000000;
    }

    function testMethod(int v) public pure {
        v = v + a;
    }
}
contract AnotherMutator {
    int public a;
    constructor() {
        a = 0x8000000000000000000000000000000000000000000000000000000000000000000;
    }

    function testMethod(int v) public pure {
        v = v + a;
    }
}
contract InteriorMutator {
    int public a;
    constructor() {
        a = 0x80000000000000000000000000000000000000000000000000000000000000000000;
    }

    function testMethod(int v) public pure {
        v = v * a;
    }
}
