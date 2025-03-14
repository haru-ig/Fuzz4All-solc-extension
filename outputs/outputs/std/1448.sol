pragma solidity ^0.8.0;
contract Mutate {
    uint constant M = 10;
    uint[] nums1;
    uint[] nums2;
    function setNums(uint256[] memory setNums) public {
        nums1 = setNums;
    }
    function getMin() public view returns (uint256) {
        uint max = nums1[0];
        for (uint i = 1; i < nums1.length; i++) {
            if (nums1[i] > max) {
                max = nums1[i];
            }
        }
        return max;
    }
    function append() public {
        uint32 added = uint32(nums1[nums1.length - 1] + 1);
        uint[] memory _newNum1 = new uint[](M + 1);
        _newNum1[M] = added;
        uint[] memory _newNum2 = new uint[](nums1.length);
        return;
    }
}
