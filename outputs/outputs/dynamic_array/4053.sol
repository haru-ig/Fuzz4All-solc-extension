pragma solidity ^0.8.0;
contract C {
    uint[] data1;
    uint[][] data2;
    uint[] data3;
    uint[][] data4;
    uint[][] data5;
    uint[][] data6;
    uint[][] data7;
    constructor() public {
        data1.push(1);
        data2.push(2, 3);
        data2.push(5, 6);
        data3.push(4);
        data4.push(2, 3); data4.push(5, 6);
        data4.push(8, 9);
        data4.push(12, 13);
        data5.push(8, 9);
        data6.push(2, 3); data6.push(5, 6);
        data7.push(7);
        data8.push(8, 9);
    }
    receive() payable external {
    }
    struct S { uint data; uint index; uint[] indexes; }
    enum E { E1, E2 }
    function f(uint i) public {
        uint j = data1[data1.length - 1];
        S s1 = data1[data1.length - 1][E.E1];
        S s2 = data1[data1.length - 1][E.E2];
        uint k = s1.data;
        uint l = data1.length % 2;
        S s3 = data1[data1.length - 1][E.E1];
        S s4 = data2[s2.index][s2.indexes[0]];
        uint m = data1.length[s3.index];
        S s5 = data1[data1.length - 1][E.E1];
        S s6 = data5
