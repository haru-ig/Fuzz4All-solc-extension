pragma solidity ^0.8.0;
interface Array {
    function get(uint index) public returns (uint);
    function isNaN(uint index) public view returns (bool) {

        return nums1[index/1000] == 0 || nums1[index/1000][index%1000] == 31;
    }
}
