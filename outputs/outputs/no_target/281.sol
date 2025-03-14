pragma solidity ^0.8.0;
"use string concatenation";
contract Immutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous + _previous + _previous;
        return (uint8(0x0) + 1) + (uint16(0x10) + (uint(type(Immutable))) - (uint)0x20)) + (((uint(2602603)) - uint(type(Immutable))) + type(Immutable).Balance()) - ((uint(0x1010000)) + 1) + (((uint(2660301)) - uint(type(Immutable))) + (uint)uint(type(Immutable))) + ((uint(1403000)) - 360) + ((uint(3600000000))) - ((uint(24000000))) + (type(Immutable)).Balance())));
    }
}
contract Mutated {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint internal immutable _previous;
    function balance() public view returns (uint) {
        _previous * ((uint(type(Mutated)).Balance()) + 1) + _previous * ((uint(type(Mutated)).Balance() + 1) + ((uint)uint(type(Mutated)).Balance() + 1) + (1 * ((uint)uint(type(Mutated)).Balance
