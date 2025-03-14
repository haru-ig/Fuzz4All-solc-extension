pragma solidity ^0.8.0;
contract MutabilityBis2 {
    struct MyStructure {
        uint a;
        uint b;
        uint c;
        uint d;
    }
    MyStructure x;
    uint constant s = 0xABCD;
    uint constant e = 4;
    uint x1 = x.i;
    uint i = 5;
    bool a;
    bool x2;
    bool x3;
    bool x4;
    bool x5;
    bool x6;
    modifier on {
        a = true;
        _;
        a = false;
    }
    modifier off {
        a = false;
        _;
        a = true;
    }
}
