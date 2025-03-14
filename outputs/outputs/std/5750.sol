pragma solidity ^0.8.0;
contract Memory4{
    uint[] public c;
    address public d;
    constructor(){
        c = new uint[](2);
        c[1] = 0;
        d = address(0);
    }
    function arrayAdd(uint x) public returns (uint) {
        return c[0] + x;
    }
    function arrayMod(uint x) public returns (uint) {
        return c[0] % x;
    }
}
