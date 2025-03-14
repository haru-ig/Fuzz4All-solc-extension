pragma solidity ^0.8.0;

contract Math {
    uint a = uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(1 + 1) + 1) + 1) + 1) + 1) + 1) + 0 + 1) + 1) + 1) + 1) + 1) + 1) + 1) + uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(1 + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 0 + 1) + 1) + 1) + 1) + 1) + 1) + uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(1 + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 0 + 1) + 1) + 1) + 1) + 1) + 1) + uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(1 + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 0 + 1) + 1) + 1) + 1) + 1) + 0) + uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(1 + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 0 + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 1) + 0;
    function Math() public {

    }
    function add(uint x, uint y) public pure returns (uint) {
        return (x + y);
    }
    function max(uint x, uint y) public pure returns (uint) {
        return ((x >= y)? x : y);
    }
    function min(uint x, uint y) public pure returns (uint) {
        return ((x < y)? x : y);
    }
    function plus() public pure {
        a -= 1;
    }
    function minus() public pure {
        a += 1;
    }

    function negate() public pure {
        a *= 10;
        a /= 10;
    }

    function plus(uint _a) public pure {
        a += uint(uint(_a));
    }
    function minus(uint _a) public pure {
        a -= uint(uint(_a));
    }
    function max(uint _a, uint _b) public pure {
        a = max(uint(uint(_a)), uint(uint(_b)));
    }
    function min(uint _a, uint _b) public pure {
        a = min(uint(uint(_a)), uint(uint(_b)));
    }

    function plus(uint
