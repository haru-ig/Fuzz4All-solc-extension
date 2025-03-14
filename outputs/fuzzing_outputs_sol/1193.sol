pragma solidity ^0.8.0;
contract SemanticsEquivalence6 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data1;
    Data internal data2;
    constructor() { data1 = Data(5, 13, 7); data2 = Data(8, 14, 7); }
    function run() public { }
}
