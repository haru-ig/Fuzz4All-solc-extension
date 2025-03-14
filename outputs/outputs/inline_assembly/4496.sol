pragma solidity ^0.8.0;
contract Emulator4 {
    uint x;
    function add(uint x) public pure returns(uint) {
        x = x + x;
        return x;
    }
    function mul(uint x,uint y) public pure return(uint) { return x*y; }
    function divmod(uint x, uint y) public pure returns(uint, uint) {
        return (div(x,y), mod(x,y));
    }
    function div(uint x, uint y) public pure returns(uint) {
        if (y == 0) return uint(-1);
        uint u = x/y;
        uint u2 = x%y;
        uint t = y-u*y;
        if (t < 0){
