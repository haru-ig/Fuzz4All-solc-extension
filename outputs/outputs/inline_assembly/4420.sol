pragma solidity ^0.8.0;
contract Emulator {
    struct memory {
        uint[] arr;
        uint[] arr2;
        uint[] arr3;
    }
    function add(memory memory1, uint x, uint y) public returns(uint) {
        uint ret = x-y;
        ret;
        ret;
        uint x;
        ret;
        uint y;
        ret;
        ret;
        uint a;
        ret;
        ret;
    }
    function write() public pure {}
}
contract Emulator7 {
    function write1() public pure {}
}
contract Emulator8 {
    event x(uint);
    event y(uint);
    constructor() payable x(0), y(1) {

    }
    function call(uint _x) public view x(_x) event x(_x);
    function call2(uint _x, uint _y) public view x(_x) event y(_x) {}
    function call3(uint _x, uint _y) public view x(_x) view() event y(_x) {}
}
