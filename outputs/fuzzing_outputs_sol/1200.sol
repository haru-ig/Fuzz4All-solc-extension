pragma solidity ^0.8.0;
contract SemanticsEquivalence8 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data1;
    Data internal data2;
    mapping(uint => Data) internal dataMap;
    constructor() {
        uint x1 = (data1.x1 + data2.x1) + data2.x2;
        uint x2 = data2.x1 + 2 * data2.x3 / data1.x1;
        dataMap[x1] = Data(x1, x2, x1);
    }
    function run() public { }
}
