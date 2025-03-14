pragma solidity ^0.8.0;
contract Emulator6 {
    uint x; uint y;
    function init() public {
        y = x+x;
        x = x^y;
        x = x*y;
        x = x/y;
    }
    function set(uint x ) public pure returns(uint) { return x; }
    function div(uint x, uint n) public pure returns(uint) {
        require(n>0, "DIV");
        uint t = x;
        uint div = 1;
        while (n!= 0) {
            if (n%2!= 0) {
                t = t/2;
            }
            div = div*2;
            n = n/2;
        }
        return t;
    }
    function mul(uint
