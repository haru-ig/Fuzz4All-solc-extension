pragma solidity ^0.8.0;
contract Emulator7 {
    uint x; uint y;
    function init() public {
        uint z = x+x/y;

        uint z = x==x*y?y:0;
    }
    function add(uint x) public pure returns(uint) { return x; }
    function sub(uint x, uint y) public pure returns(uint) { return x - y; }
    function mul(uint x) public pure returns(uint) { return x * y; }
    function div(uint x, uint y) public pure returns(uint) { return x / y; }
    function write() public {}
}
