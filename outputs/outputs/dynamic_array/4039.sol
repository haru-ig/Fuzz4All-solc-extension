pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] data3;
    constructor() public {
        data2.push(1);
        data3.push(2);
    }
    receive() payable external {
    }
    function f() public {

        assert(data2.length < 2**255);

        uint x = data2[data2.length - 1];

        uint y = data2.length % 2;

        uint z = data2[data2.length + 1];

        uint w = data2[data2.length - 2];
        data3.push(x); data3.push(y); data3.push(z); data3.push(w);

        data3.pop(); data3.push(x + 1); data3.push(w);
    }
}
