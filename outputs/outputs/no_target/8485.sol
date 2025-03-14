pragma solidity ^0.8.0;
contract NewMutated1 {
    uint public a;
    uint[8] public b;
    uint public c;
    constructor (
        uint _value1,
        uint[8] memory _value2,
        uint _value3
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    modifier useless(uint32 i) {
        a = a + 16;
        b = b;
        c = c + 16;
        used(c);
        a = a + 16;
        b = b;
        c = unused(c);
        a = a + 16;
        b = b;
        c = i;
        return;
    }
    function used(uint _a) public pure used(_a);
    function unused(uint _a) public pure unused(_a);
    }
contract G2 {
    uint64 private a;
    uint64[] private b;
    uint public c;
    constructor (
        uint64 _value1,
        uint64[] memory _value2,
        uint _value3,
        uint _value4
    ) public {
        a = _value1 + 16;
        b = _value2;
        c = _value3;
    }
    modifier useless(uint32 i) {
        a = a + 16;
        b = b;
        c = c + 16;
        used(c);
        a = a + 16;
        b = b;
        c = unused(c);
        a = a + 16;
        b = b;
        c = i;
        return;
    }
    function used(uint _a) public pure used(_a);
    function unused(uint _a) public pure unused(_a);
    }
/*
