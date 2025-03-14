pragma solidity ^0.8.0;
contract test66 {
    uint[] public array;
    uint8 public data[42];
    function x() public {
        array = new uint[](1);

        for (uint i = 0; i < 10; i++) {
            array[0] = 0x100000000 + i;
        }
    }
    function f() public {
        for (uint i = 0; i < 1000; i++) {
            data[i] = 1;
        }
    }
}
