pragma solidity ^0.8.0;
contract ArrayModification1 {
    uint constant M = 10;
    uint[] nums1;
    uint[] nums2;
    function modifyNumbers(uint256[] memory nums1, uint256[] memory nums2) public {





        nums1[1] = 26;
        nums2 = nums1.sub(nums2);
    }
}
