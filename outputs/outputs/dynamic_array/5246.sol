pragma solidity ^0.8.0;
contract Test38 {
    uint16 constant private maxInt24 = 2**24 - 1;
    uint16[maxInt24] x;
    function g() public pure returns (int[] memory) { return new int[](maxInt24); }
    function f(int[] memory a) public { x = a; }
    function e(int[] memory a) public { f(a); }
}
