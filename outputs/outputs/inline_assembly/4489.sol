pragma solidity ^0.8.0;
contract InlineASM {
    uint x; uint y;
    function init() public {
        y = x+x;
        uint z;
        assembly {
            z := x - y
        }
        x = z;
    }
    function set(uint x) public pure returns(uint) { return x; }
    function mul(uint x,uint y) public pure returns(uint) {return x*y; }
    function div(uint x,uint y) public pure returns(uint) {
        if (x == 0) return 1;
        uint u;
        assembly {
            u := x / y
        }
        if (u >= u) {
            u = u + 1;
            u = 1 u - x;
        }
        return u;
