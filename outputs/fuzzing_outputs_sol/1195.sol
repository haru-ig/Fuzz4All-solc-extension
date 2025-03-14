pragma solidity ^0.8.0;
contract SemanticsEquivalence7 {
    struct Data { uint x1; uint y1; uint x2; uint y2; }
    Data internal data1;
    Data internal data2;
    constructor() { data1 = Data(5, 13, 7, 0); data2 = Data(8, 14, 7, 0); }
    function run() public { }
}
