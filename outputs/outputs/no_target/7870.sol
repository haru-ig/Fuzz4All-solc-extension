pragma solidity ^0.8.0;
contract TestMutator {
    uint40 foo;
    constructor (uint40 _bar) public {foo = _bar;}
    modifier onlyByRef {
        assert(foo == ref);
        yield;
    }
}
contract TestMutant {
    TestMutator testMutator;
    constructor () public {testMutator.set(1);}
}
