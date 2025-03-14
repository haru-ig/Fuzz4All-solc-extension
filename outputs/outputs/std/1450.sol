pragma solidity ^0.8.0;
contract Mutate {

    uint constant M = 10;
    uint[] nums1;
    uint[] nums2;
    constructor(uint[] memory setNums) {
        nums1 = setNums;
        nums2 = setNums;
    }
    function getMin() public view returns (uint256) {
        return nums1[0];
    }
    function append() public {
        uint32 added;
        added = uint32(nums1[nums1.length - 1] + 1);
        uint[] memory _newNum1 = new uint[](M + 1);
        _newNum1[M] = added;
        uint[] memory _newNum2 = new uint[](nums1.length);
        _newNum2[nums1.length] = added;
        return;
    }
}
