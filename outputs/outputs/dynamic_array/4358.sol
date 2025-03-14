pragma solidity ^0.8.0;


contract Test {
    uint256 storedMemory;

    uint[] public a;
    uint[32] public b;

    function Test() {
        a[0] = b[0] = 2;
        storedMemory = 0;
    }
    function test() public {
        uint test = storedMemory;
        storedMemory += 1;
    }
    function test2(uint memory) public {


        a.push(memory);
        uint result = a[0];
        a[0] += result;
        a[0].to(address(this));
    }
    function test3() public {
        a.push(6);
        a[0] += a[1];
        a[1].to(address(this));
    }
    function test5(string memory s) public pure {
        storedMemory = 0;
        require(s.length < 50, "");
        storedMemory++;
    }

    function test6() public {
        a.push(13);
        a[0] += a[5];
        a[5] = b[0];
        b[0] = a[1];
    }
    constructor() {
        a.push(12);
        a.push(13);
        b[0] = 1;
    }
    event TestEvent([uint a, uint b, uint c, uint d](
        uint e,
        uint f,
        uint g,
        uint x
    ));
}
