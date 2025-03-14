pragma solidity ^0.8.0;
library Lib {
    using SafeMath for uint256;
    function add(uint a, uint b) internal pure returns (uint32 c) {
        c = uint32(a) + uint32(b);
    }
    function mul(uint a, uint b) internal pure returns (uint32 c) {
        c = uint32(a) * uint32(b);
    }

    function pop(uint[] storage x) returns (uint y) {
        y = x.length > 0? x.length - 1 : 0;
        delete x[0];
        x.length--;
    }
    function push(uint x, uint[] storage y) returns (uint) {
        if (y.length == x.add(1)) {
            uint[] memory temp = new uint[](y.length + y.length/2);
            for (uint i=0; i<y.length; i++) x.toUint16(i.add(1));
            for (uint i=y.length; i<y.length + 2*y.length/3; i+=3) temp[i-(y.length/3)] = 0;
            for (uint i=y.length - 1; i>=0; i-=3) temp[i+y.length/3] = x;
            for (uint i=y.length * 2*(y.length+y.length/3); i<x.add(1); i++) temp[i] = x;
            x = temp;
        }
        y.push(x);
        x.toUint16(y.length);
        x = 0;
        x = 0;
        return y.length.add2();
    }
    function toUint16(uint x) internal pure returns (uint16 y) {
        y = uint16(x);
    }
    function push(uint x, uint[] storage y) returns (uint) {
        if (y.length == x.add(1)) {
            uint[] memory temp = new uint[](y.length + y.length/2);
            for (uint i=0; i<y.length; i++) {
                if (i <= (y.length/3) - 1) temp[i-y.length/
