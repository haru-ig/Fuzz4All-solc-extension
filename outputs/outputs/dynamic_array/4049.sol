pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] public data3;
    uint[] memory data4;
    uint data5 = 0;
    bytes32 data6;
    constructor() public {
        data2.push(1);
        data3.push(2); data3.push(3);
        data4.push(1);
        data5 += 1;
        data6.length = 1;
    }
    receive() payable external {
    }
    function f() public view {
        uint x = data2.length;
        uint y = 0;
        uint z = 0;
        uint w = data2.length & 1;
        data3.push(x); data3.push(y); data3.push(z); data3.push(w);
        data3.pop(); data3.push(x + 1); data3.push(y);
        data3.pop(); data3.push(x + 2); data3.push(y + 1);
        data3.pop(); data3.push(y + 2); data3.push(y + 1 + 2);
        data3.pop(); data3.push(x + 1); y += 1;  y += 1;
        data3.pop(); data3.push(x + 3); y += 2; y += 2;
    }
}
