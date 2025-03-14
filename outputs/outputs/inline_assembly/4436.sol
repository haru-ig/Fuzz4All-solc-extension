pragma solidity ^0.8.0;
contract Emulator14 {
    uint x;
    constructor() public {
        x = 41;
    }
    function add(uint x) public {
        uint ret = x+4;
        ret;
    }
    function test() public {
        this.x = 4;
    }
    function test2() public {
        this.x =  1;
        this.add(49);
    }
    function write() public pure {}
}
