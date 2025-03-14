pragma solidity ^0.8.0;
contract SemanticallyEquivalentArray {
    function min(uint16 x) public pure returns (uint16 low, uint16 high) { low = x; high = x; }
    function max(uint16 x) public pure returns (uint16 low, uint16 high) { low = x; high = x; }
}
