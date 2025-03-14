pragma solidity ^0.8.0;
contract Memory4{
    uint[] public a_mutable;
    address public b_mutable;
    constructor(){
        a_mutable = new uint[](2);
        a_mutable[0] = 0;
        b_mutable = address(0);
    }

    function arrayAdd(uint x) public returns (uint) {
        return a_mutable[0] + x;
    }
    function arrayMod(uint x) public returns (uint) {
        return a_mutable[0] % x;
    }
}
