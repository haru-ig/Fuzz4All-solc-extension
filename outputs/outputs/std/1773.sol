pragma solidity ^0.8.0;
contract Array {
    function sum(uint16[] memory a) public pure returns (uint16 sum) { for (uint i; i < a.length; i++) sum += a[i]; }
    function min(uint16 x) public pure returns (uint16 low, uint16 high) { low = x; high = x; }
    function max(uint16 x) public pure returns (uint16 low, uint16 high) { low = x; high = x; }
    function swap(uint16[] memory a, uint16 x, uint16 y) public pure returns (uint16 temp) { temp = a[x]; a[x] = a[y]; a[y] = temp; }
}
