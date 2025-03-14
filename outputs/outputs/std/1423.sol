pragma solidity ^0.8.0;
contract ArrayModification {
    uint M;
    uint[] nums1;
    uint[] nums;
    uint[] nums2;
    uint[] nums3;
    function setNums(uint256[] calldata nums) public {
        nums1 = nums;
    }
    function getMin() public view returns (uint256) {
        uint256 max = nums1[0];
        for (uint256 i = 1; i < nums1.length; i++) {
            if (nums1[i] > max) {
                max = nums1[i];
            }
        }
        return max;
    }
}

pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 38;
    uint[] nums1;
    uint[] nums;
    uint[] nums2;
    uint[] nums3;
    function setNums(uint[] calldata nums) public {
        nums1 = nums;
    }
    function getMin() public view returns (uint256) {
        uint256 max = nums1[0];
        for (uint256 i = 1; i < nums1.length; i++) {
            if (bytes16(nums1[i]).toUint() > max) {
                max = bytes16(nums1[i]);
            }
        }
        return bytes16(max).toUint();
    }
}
