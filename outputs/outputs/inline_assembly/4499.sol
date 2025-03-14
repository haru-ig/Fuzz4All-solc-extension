pragma solidity ^0.8.0;
contract Emulator3 {
    function write() public {}
}
contract Emulator2 {
    uint x; uint y;    function init() public { y=x+x; }
    function add(uint x,uint y) public pure returns(uint) { return x+y; }
    function sub(uint x,uint y) public pure returns(uint) { return x-y; }
    function mod(uint x, uint y) public pure returns(uint) {
        if (x==0) return 1; else return x%y;
    }
    function mul(uint x, uint y) public pure returns(uint) {
        return x*y; x = x+x*y;
    }
    function div(uint x, uint
