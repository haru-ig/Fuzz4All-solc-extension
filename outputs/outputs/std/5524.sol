pragma solidity ^0.8.0;
contract Mutate23 {
    address[] memory a= new address[](5);
    uint[] memory b= new uint[](5);
    address[5] memory c;
    address e = 0x0;
    mapping(uint=>uint[]memory) d;
    constructor(uint[] memory b, address[5] storage)
        public
        {
            c = a;
            b[0] = 5;
            b[2] = 2;
            c = a;
            c = e;
        }
    function test(address[] memory a, uint[] memory b, address[5] memory c) public {
        a = a;
        c = c;
        b = b;
        f();
    }
    function f() public {
        c = a;
        address(b).callData(memory.decode());
    }
}
