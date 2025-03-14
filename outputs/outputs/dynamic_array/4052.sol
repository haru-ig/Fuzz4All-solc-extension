pragma solidity ^0.8.0;
contract C {
    uint[5] data2;
    uint[4] data3;
    constructor() public {
        data2[data2.length - 1] = 1;
        data3[data3.length - 1] = 2; data3.push(3);
        data3[data3.length - 2] = 3; data3.push(4); data3.push(5);
        data3[data3.length - 3] = 5; data3.push(6);
    }
    receive() payable external {
    }
    function f() public {
        uint x = data2[data2.length - 1];
        uint y = data2.length % 2;
        uint z = data2[data2.length - 2];
        uint w = data2[data2.length];
        data3.pop(); data3.push(x + 1); data3.push(w);
        data3[data3.length - 1] = x + 2; data3.push(w + 1);
        data3.pop(); data3.push(y + 1); data3.push(w + 2);
    }
}
