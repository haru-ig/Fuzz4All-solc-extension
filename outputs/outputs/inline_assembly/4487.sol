pragma solidity ^0.8.0;
contract Emulator5 {
    uint x; uint y;
    constructor() {x = y= 0;}
    function init() public {
        y = add(x+x);
    }
    function add(uint x,uint y) public pure returns(uint) { return x+y; }
    function sub(uint x,uint y) public pure returns(uint) { return x-y; }
    function set(uint) public pure {}
    function mul(uint, uint) public pure {}
    function div(uint, uint) public pure {}
    function mod(uint, uint) public pure {}
    function sqrt(uint) public pure {}
    function write() public {}
}
