pragma solidity ^0.8.0;
contract C {
    uint[] storage data2;
    uint[] storage data3;
    uint[] internal data4;
    constructor() public {
        data2.push(1);
        data3.push(2); data3.push(3); data3.push(data4);
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

pragma solidity ^0.8.0;
contract C {
    mapping(uint => uint[]) data2;
    mapping(uint => uint[]) data3;
    constructor() public {
        data2.push(1); data2.push(2);
        data3.push(1); data3.push(2); data3.push(3); data3.push(data4)
    }
    receive() payable external {
    }
    function f() public {
        assert(data2[data2.length-1].length < 2**255);
        uint x = data2[data2.length-1][data2.length-1];
        uint y = data2.length%2;
        uint z = data2[data2.length + 1][data2.length-1];
        uint w = data2.length-1;
        data3.push(x);
        data3.push(y);
        data
