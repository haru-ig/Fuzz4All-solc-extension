pragma solidity ^0.8.0;
library Functions {
    function multiply(uint x, uint y) public pure returns (uint) {
        return (x * y);
    }
}
contract MultipleModifications {
    uint public x;
    uint public y;
    uint public z;
    uint public num;

    function multiple() public returns (uint, uint, uint) {
        num = 6;
        uint x = 2;
        y = 3;
        z = 4;
        x = Functions.multiply(x, 5);
        return (z, y, x);
    }
    function multiple0x0() public returns (uint, uint) {
        num = 6;
        x = num;
        y = 3;
        z = 4;
        x = Functions.multiply(x, 5);
        return (z, y);
    }
    function multiple2() public returns (uint, uint) {
        num = 6;
        uint x = 2;
        y = 300;
        z = 4;
        uint xTemp = Functions.multiply(x, 5);
        y = xTemp;
        x = y;
        return (z, x);
    }
    function multiple0x02() public returns (uint, uint) {
        num = 6;
        x = num;
        y = 3;
        z = 4;
        x = Functions.multiply(x, 5);
        return (z, y);
    }
}
