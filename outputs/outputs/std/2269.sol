pragma solidity ^0.8.0;
contract SimpleMod10 {
    uint x;
    uint y;
    variable uint x_2;
    uint  z;
    constructor() {
        x = 42;
        y = 1337;
        x_2 = x % 10;
    }
    function mod(uint x,uint y) public pure returns (uint) {
        return x % y;
    }
}
