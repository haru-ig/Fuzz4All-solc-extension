pragma solidity ^0.8.0;
library Array {
    using LibArrayHelper for uint[];
    function findMin(uint[] a) public view returns (uint) { return LibArrayHelper.findMin(a); }
    function findMax(uint[] a) public view returns (uint) { return LibArrayHelper.findMax(a); }
    function getSum(uint[] storage a) public view returns (uint) { return LibArrayHelper.getSum(a); }
    function sortBy(uint x, uint[] memory b) public pure returns (uint) { return LibArrayHelper.sortBy(x, b); }
    function sort(uint[] storage a) public pure { LibArrayHelper.sort(a); }
}
