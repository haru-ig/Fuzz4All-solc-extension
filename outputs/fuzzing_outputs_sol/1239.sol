pragma solidity ^0.8.0;
contract SemanticsEquivalence6 {
    function run() public { }
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    function increase(uint i) public {
        uint s = data.x1;
        data.x3 = data.x3 + s;
    }
    function increase2(uint i) public {
        for (uint j = 0; j < i + 1; j++) {
            data.x3 = data.x3 + j;
        }
    }
}
contract SemanticsEquivalence7 {
    struct Extra { uint x1; uint x2; uint x3; }
    Extra internal extra;
    function increase(uint i) public {
        for (uint j = 0; j < i + 1; j++) {
            extra.x3 = extra.x3 + j;
        }
    }
    function increase2(uint i) public {
        for (uint j = 1; j < i + 1; j++) {
            extra.x3 = extra.x3 + j;
        }
        for (uint k = 2;k < i + 1; k
