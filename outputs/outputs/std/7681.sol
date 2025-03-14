pragma solidity ^0.8.0;

contract GoodCase13 is EquivalentGoodCase13 {









    struct ExampleBytes { uint256 test; uint256 x; uint256 y; }
    function testWrite() public {
        ExampleBytes memory storage ex = new ExampleBytes();
        ex.test = 3;
        assembly {
            let bytes := mload(add(ex, 0x20))
            mstore(0x40, mload(add(bytes, 0x20)))
            mstore(0x60, mload(add(bytes, 0x3fc)))
        }
    }



    struct ExampleBytesTest { uint256 test; uint256 x; uint256 y; }
    constructor() {
        ExampleBytesTest memory storage ex = new ExampleBytesTest();
        mstore(0x60, mload(0x40));
        ex.y = 0xfa0000000000000000000000000000000000000000000000000000000000000;
        ex.x = 0xf000000000000000;
    }




    function testRead() view public returns (ExampleBytesTest memory t) {
        ExampleBytesTest memory mem;
        mem.test = 1;
        mem.x = 2;
        mem.y = 3;
        return mem;
    }

    function testReadStorage() returns (bool v) {
        v = mload(0x60)!= 0;
        return v;
    }

    function testReadCode
