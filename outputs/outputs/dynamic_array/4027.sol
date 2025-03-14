pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] data3;
    uint[5] memory data4;
    uint[3,5] memory data5;
    uint memory v0;
    uint[2,2,3] memory v1;
    uint memory c0;
    uint[9] memory c1;
    constructor() public {
        data2[0] = 1;
        v0 = 2;
        uint x = 3 in data4;
        data4[data4.length-1] = 4;
        data5.push(5);
        data5.push(6);
        data5.pop();
        data5 = data4;
        data5.pop(); data5[8] = 7;
        data5.push(8);
        v1.push(data5);
        v1.push(data2[data4.length-1],data3);
        data2.length = 0;
        data2.push(9);
        c0 = 100 in data1;
        c0 = (2 * 64) in data2;
        data5;
        v1.pop();
        v1.push(data4);
        data4[228];
        data4 = data5.push(data2.length);
        data3 = v1.push(0);
        data3 = data5.push(data4[data4.length-1]);
        data5.length;
        data5.pop();
        data5 = data3;
        data5.push(data5.push(0));
        data3 = data5.push(data5.length);
        data5.length;
        data5.pop();
        data5 = data4;
        data5.pop();
        data5.push(0);
    }
    receive() external payable {
    }
    function f() public {
        data2.pop(); data3.push(3);
        data2 = new uint[8];
        data3.pop(); data2.push(4);
        data2.push(5);
        data3 = data2;
        data5
