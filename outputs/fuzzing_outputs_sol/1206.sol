pragma solidity ^0.8.0;
contract SemanticsEquivalence9 {
    struct Data { uint[2] x1; }
    Data internal data1;
    constructor() {
        uint[2] memory x1 = data1.x1;
        x1[1] = 1;
        data1.x1 = x1;
        data1.x1[0] += data1.x1[1];
    }
    function run() public { }
}
