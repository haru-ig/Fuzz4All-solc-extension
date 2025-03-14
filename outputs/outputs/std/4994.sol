pragma solidity ^0.8.0;
contract Array {
    function get(uint i) public pure returns (uint) { return i; }
    function set(uint i,uint y) public { }
    function min(uint v) public pure { revert("Array.sol: array min() not implemented"); }
    function max(uint v) public pure { revert("Array.sol: array min() not implemented"); }
    function sum(uint x) public pure returns (uint) { return x; }
    function sort(uint[] memory) public pure { revert("Array.sol: array sort() not implemented"); }
    function sort2(uint[] memory) public pure returns (uint[] memory) { return new uint[](x); }
    function slice(uint[] memory) public pure { revert("Array.sol: array slice() not implemented"); }
    function filter(uint[], uint, uint[]) public pure returns (uint[]) { return new uint[](x); }
    function filterWith(uint,uint, uint[], uint[]) public pure returns () { revert("Array.sol: array filterWith() not implemented"); }
}
