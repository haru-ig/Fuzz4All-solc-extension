pragma solidity ^0.8.0;
contract C {
    uint[] memory data;
    uint[] memory data;
    constructor() public {
        data.push(1);
        data.push(2);
    }
    receive() payable external {
    }
    function f() public {
        uint x = data[data.length - 1];
        uint y = data.length % 2;
        uint z = data[data.length - 2];
        uint w = data[data.length];
        data.push(x); data.push(y); data.push(z); data.push(w);
        data.pop(); data.push(x + 1); data.push(w);
        data.pop(); data.push(x + 2); data.push(w + 1);
        data.pop(); data.push(y + 1); data.push(w + 2);
    }
}
