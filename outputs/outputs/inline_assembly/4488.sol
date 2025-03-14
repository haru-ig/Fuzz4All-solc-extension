pragma solidity ^0.8.0;
contract Emulator6 {
    uint x; uint y;
    function init() public {
        y = sub(x,x);
    }
    function set(uint x) public pure returns(uint) { return x; }
    function mul(uint x, uint y) public pure returns(uint) {return x*y; }
    function div(uint x, uint y) public pure returns(uint) {
        return div(x,y);
    }
    function mod(uint x, uint y) public pure returns(uint) {
        return mod(x,y);
    }
    function sqrt(uint x) public pure returns(uint) {
        return div(x, uint(sqrt(x)));
    }
    function write() public {}
}
