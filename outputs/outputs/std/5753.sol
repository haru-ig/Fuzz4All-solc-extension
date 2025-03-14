pragma solidity ^0.8.0;
contract Memory3{
    uint[] public a;
    address public b;
    constructor(){
        a = new uint[](1);
        a[0] = 0;
        b = address(0);
    }
    function arrayAdd(uint x, uint y) public returns (uint) {
        return a[0] + x + y;
    }
    function arrayMod(uint x, uint y) public returns (uint) {
        return a[0] % x + y;
    }
}
