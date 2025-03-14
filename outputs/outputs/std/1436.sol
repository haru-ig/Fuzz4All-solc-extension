pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 0;

    uint[] public nums1;
    uint[] public nums2;
    uint[] public nums3;
    function setNums(uint[3] memory _setNums) public {
        nums1 = _setNums;
    }
    function getMin() public view returns(uint256) {
        uint min = nums1[0];
        uint max = nums1[0];
        for (uint i = 1; i < nums1.length; i++)
        {
            if (nums1[i] < min) min = nums1[i];
            else if (nums1[i] > max) max = nums1[i];
        }
        return min;
    }
}
