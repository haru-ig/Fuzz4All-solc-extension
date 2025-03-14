pragma solidity ^0.8.0;
contract C {
    uint[] data3;
    constructor() public {
    }
    receive() payable external {
    }
    function f() public {
        assert(data3.length < 2**255);
        uint x = data3[data3.length - 1];
        uint y = data3.length % 2;
        uint z = data3[data3.length + 1];
        data3.push(x); data3.push(y); data3.push(z);
        data3.pop(); data3.push(x + 1); data3.push(x);
        data3.pop(); data3.push(x + 1); data3.push(w);
    }
}
/* Please create a short program which uses dynamic arrays in a complex way.
