pragma solidity ^0.8.0;
contract ArrayModification1 {
    function increment(uint256 idx) public {
        nums2[idx]++;
        nums1[idx] = nums2[idx];
    }
    function getSize() public view returns (uint256[M] memory) {
        return nums1;
    }
}
