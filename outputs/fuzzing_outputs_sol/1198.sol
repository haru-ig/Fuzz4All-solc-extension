pragma solidity ^0.8.0;
contract SemanticsEquivalence7 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data1;
    Data internal data2;
    mapping(uint => Data) internal dataMap;
    constructor() {
        uint x1 = (11 * data1.x1) / data2.x1;
        uint x2 = (data1.x2 + data2.x2) / 5;
        dataMap[x1] = Data(x1, x2, x1);
    }
    function run() public { }
}
