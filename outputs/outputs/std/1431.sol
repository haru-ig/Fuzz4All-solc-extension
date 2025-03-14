pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 87;
    uint[] nums1;
    uint[] nums;
    uint[] nums2;
    uint[] nums3;
    function setNums(uint[] memory setNums) public {
        nums1 = setNums;
    }
    function getMin() public view returns (uint256) {
        uint max = nums[0];
        for (uint i = 1; i < nums.length; i++) {
            if (nums[i] > max) {
                max = nums[i];
            }
        }
        return max;
    }
}

pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 87;
    uint[] nums1;
    uint[] nums;
    uint[] nums2;
    uint[] nums3;
    uint length;
    uint[] minNums;
    function setNums(uint[] memory setNums, uint length ) public {
        nums1 = setNums;
        this.length = length;
    }
    function setMinNums() public {
        nums2 = minNums;
    }
    function getMin() public view returns (uint256) {
        uint max = nums2[0];
        for (uint i = 1; i < nums2.length; i++) {
            if (nums2[i] > max) {
                max = nums2[i];
            }
        }
        return max;
    }
}
