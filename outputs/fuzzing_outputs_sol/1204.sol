pragma solidity ^0.8.0;
contract SemanticsEquivalence2 {
    struct Data1 { uint a; uint b; }
    struct Data2 { uint a; uint b; uint c; }
    Data1 internal data1; Data2 internal data2;
    constructor() {
        data1 = Data1(3, 12);
        data2 = Data2(data1.a, data1.b);
    }
    function run() public { }
}
