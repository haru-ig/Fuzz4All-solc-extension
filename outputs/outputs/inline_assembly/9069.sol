pragma solidity ^0.8.0;
library Lib
{
    function add(uint a, uint b) public pure returns (uint) {
        return (a + b);
    }
    function div(uint a, uint b) public pure returns (uint) {
        return (a / b);
    }
    function pow(uint a, uint b) public pure returns (uint) {
        return (a ** b);
    }
    function mul(uint a, uint b) public pure returns (uint) {
        return (a * b);
    }
}
contract C
{
constructor(uint x) { }
uint y;
uint add(uint x, uint y) public pure returns (uint z) {
    z = uint(Lib.add(x, y));
    return (z);
}
uint div(uint x, uint y) public pure returns (uint z) {
    z = uint(Lib.div(x, y));
    return (z);
}
uint pow(uint y, uint z) public pure returns (uint z) {
    z = uint(Lib.pow(y, z));
    return (z);
}
uint mul(uint x, uint y) public pure returns (uint z) {
    z = uint(Lib.mul(x, y));
    return (z);
}
}
