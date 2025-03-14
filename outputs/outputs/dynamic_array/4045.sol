pragma solidity ^0.8.0;
contract C {
    struct Nested {
        uint a; uint b; uint e;
        uint[] a2;
    }
    uint[] data2;
    uint[] data3;
    constructor() public {
        data2.push(1);
        Nested memory nested = Nested(1, 2, 3);
        nested.a2.push(4);
        data3.push(2); data3.push(3); data3.push(4); data3.push(nested);
        data3.pop();
        data3.pop();
        data3.pop(); data3.push(4 + 4);
        data3.pop();
        data3.push(15 + 15);
        data3.pop();
        data3.push(data3.length);
    }
    receive() payable external {
    }
}
