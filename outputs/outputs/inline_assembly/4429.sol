pragma solidity ^0.8.0;
contract Emulator7 {
    uint x = 10;
    function add (uint x, uint y) public returns(uint) {
        uint ret = x+y;
        write();
        x;
        ret;
    }


    function sub (uint x, uint y) public returns(uint) {
        uint ret = x-y;
        write();
        x;
        ret;
    }
    function mul (uint x, uint y) public returns(uint) {
        uint ret = x*y;
        write();
        x;
        ret;
    }
    function div (uint x, uint y) public returns(uint) {
        uint ret = x/y;
        write();
        x;
        ret;
    }
    function write() public pure {}
}

contract Main {
    uint x = 10;
    function add (uint x, uint y) public returns(uint) {
        return Emulator7.add(x,y);
    }
    function sub (uint x, uint y) public returns(uint) {
        return Emulator7.sub(x,y);
    }
    function mul (uint x, uint y) public returns(uint) {
        return Emulator7.mul(x,y);
    }
    function div (uint x, uint y) public returns(uint) {
        return Emulator7.div(x,y);
    }
    function write() public pure {}
}
