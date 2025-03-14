pragma solidity ^0.8.0;
contract C {
    uint[] data;
    constructor() public {
        data.push(1);
        data.push(2);
    }
    receive() payable external {
    }
    function f() public {
        assert(data.length < 2**255);
        uint x;
        data.push(x);
        uint y = x + 1;
        data.push(y);
        uint z = x + y;
        data.push(z);
        data.pop();
    }
}
contract C {
    uint[] data;
    uint[] data1;
    constructor() public {
        data1.push(1);
        data1.push(2);
    }
    receive() payable external {
    }
    function f() public {
        assert(data.length < 2**255);
        uint a;
        data.push(a);
        uint b = a + 1;
        data.push(b);
        uint c = a + b;
        data.push(c);
        data.pop();
    }
}
