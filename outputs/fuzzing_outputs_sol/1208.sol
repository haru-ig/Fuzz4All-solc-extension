pragma solidity ^0.8.0;
contract SemanticsEquivalence9 {
    struct Data { uint x1; uint x2; uint x3; }
    Data public data1;
    Data public data2;
    mapping(uint => address) public dataMap;
    constructor() public {
        data1 = data2;
        address x1 = data1.x1 + data2.x1 + 2 * data2.x3 / data1.x1;
        dataMap[x1] = data1;
     }
    function run() public { }
}
