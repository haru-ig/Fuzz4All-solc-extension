pragma solidity ^0.8.0;
contract SemanticsEquivalence7 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data1;
    Data internal data2;
    constructor() { data1 = Data(5, 13, 7); data2 = Data(8, 14, 7); }
    function run() public {
        if (data1.x1 < data1.x2 + data1.x3) {
            data1.x1 = data1.x1 + data1.x3;
            data1.x2 = data1.x2 + data1.x3;
        }
    }
}
