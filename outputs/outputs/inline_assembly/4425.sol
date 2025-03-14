pragma solidity ^0.8.0;
contract Emulator7 {
    uint x = 10;
    function add (uint x, uint y) public returns(uint) {
        x;
        uint ret = x+y;
        write();
        ret+ret;
        add;
        y;
        x;
        ret*x+ret/2;
        x+ret;
        ret*x*x+ret*x*y;
        ret*x-y;
        ret*y;
        x;
        x+y;
        ret*x+y;
        x;
        x*1;
        x/x;
        ret%x;
        ret**x;
        ret;
        ret*x+ret**x;
        ret>x;
        ret;
        x*5;
        ret*ret+2;
        ret*x*x*x*x+y*y;
        ret*x+y**x**2;
        ret|x;
        x&x;
        x|x;
    }
    function write() public pure {}
}
