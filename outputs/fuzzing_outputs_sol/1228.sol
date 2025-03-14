pragma solidity ^0.8.0;
contract SemanticsEquivalence  {
    uint internal i;
    function increment() public returns(uint) {
        return ++i;
    }
}
contract SemanticsEquivalence2 {
    uint internal i;
    function increment() public returns(uint) {
        i = i + 1;
        return i;
    }
}
contract SemanticsEquivalence3 {
    function run() public { }
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    function increase(uint i) public {
        uint s = data.x1;
        for (uint j = s; j < i + 1; j++) {
            data.x3 = data.x3 + j;
        }
    }
    function increase2(uint i) public {
        for (uint j = 0; j < i + 1; j++) {
            data.x3 = data.x3 + j;
        }
    }
    function increase3(uint i) public {
        uint j;
        for (j = 1; j < i + 1; j++) {
            data.x3 = data.x3 + j;
        }
        uint k;
        for (k = 2;k < i + 1; k++) {
            data.x3 = data.x3 + k;
            j = j + 1;
        }
    }
}
contract SemanticsEquivalence4 {
    struct Data { uint x1; uint x2; uint x3; }
    function run() public {
        data.x3 = data.x1 + data.x2;
    }
    Data internal data;
}
contract SemanticsEquivalence5 {
    struct Extra { uint x1; uint x2; uint x3; }
    Extra internal extra;
    function receiveExtra(uint w) public {
        extra.x1 = w;
    }
    function run() public {
        extra.x3 = extra.x1 + extra.x2;
    }
    Extra internal data;
}
