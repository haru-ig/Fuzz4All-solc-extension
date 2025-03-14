pragma solidity ^0.8.0;
contract ArrayModificationMutated {
    uint constant M = 127;
    uint[] nums1;
    uint[][] nums;
    uint[] nums2;
    uint[][] nums3;
    function setNums(uint[][] calldata nums) public {
        nums1 = nums[0];
        nums = nums;
    }
    function getMin() public view returns (uint256){
        uint256 min = uint256(nums1.length) < uint256(nums.length)? nums1[0] : nums.length - 1;
        for(uint i = 0; i < nums1.length; i++) {
            uint256 element = uint256(nums1[i]);
            uint256 temp = uint256(nums.length) < uint256(i)? uint256(i) + 1 : int(-1);
            if (uint256(nums.length) < uint256(temp) && nums1[i] < nums[temp][i]) {
                min = nums[temp][i];
                uint256 temp2 = uint256(nums.length) < uint256(i + 1)? uint256(temp) + 1 : int(-1);
                while (temp) {
                    if (uint256(nums1.length) < temp + 1 || uint256(nums1.length) < uint256(i + 1) + 1) {
                        break;
                    }
                    if (nums1[i + 1] < nums[temp + 1][temp2]) {
                        min = nums[temp + 1][temp2];
                        temp = uint256(nums.length) < uint256(i + 1 + 1)? uint256(temp) + 1 : int(-1);
                        break;
                    } else if (temp == uint256(nums1.length)) {
                        uint256 length = uint256(uint256(nums.length) < uint256(i)? uint256(i) + 1 : int(-1));
                        for (uint256 k = uint256(temp); k < length; k++) {
                            if (uint256(nums.length) < uint256(k + 1) + 1) {
                                break;
                            }
                            if (nums[temp][i + 1] < nums[temp + 1][k + 1]) {
                                min = nums[temp + 1][k
