pragma solidity ^0.8.0;
contract Mutate {
    uint[] a = new uint[](2);
    uint256 x = 0;
    bool test;
    function setNums() public returns (uint[]) {
        a = new uint[](3);
        a[0] = 5;
        a[1] = 4;
        a[2] = 6;
    }
    function getIndex() public view returns (uint256) {
        return x;
    }
}
