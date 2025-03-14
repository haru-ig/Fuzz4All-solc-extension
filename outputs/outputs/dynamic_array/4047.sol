pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] data3;
    address payable payable receiver;
    constructor(address payable _receiver) public {
        receiver = _receiver;
        data2.push(1);
        data3.push(2); data3.push(3);
    }
    receive() payable external {
    }
    function f() public {
        uint x = data2[data2.length - 1];
        uint y = data2.length % 2;
        uint z = data2[data2.length - 2];
        uint w = data2[data2.length];
        data3.push(x); data3.push(y); data3.push(z); data3.push(w);
        data3.pop(); data3.push(x + 1); data3.push(w);
        data3.pop(); data3.push(x + 2); data3.push(w + 1);
        data3.pop(); data3.push(y + 1); data3.push(w +2);
        data3.pop(); data3.push(2); data3.push(3);
        data3.pop(); data3.push(receiver.call{value: w}(() => { }));
    }
}
