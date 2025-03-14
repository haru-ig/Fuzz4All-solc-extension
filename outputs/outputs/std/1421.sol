pragma solidity ^0.8.0;
contract ArrayModification{
    uint constant M = 87;
    uint[] memory nums1;
    uint[] memory nums;
    uint[] memory nums2;
    uint[] memory nums3;
    function setNums(uint[] calldata nums) public{
        nums1 = nums;
    }
    function getMin() public view returns(uint256){
        uint result = nums1[0];
        for(uint i = 1; i < nums1.length; ++i){
            if(nums1[i] > result) {
                result = nums1[i];
            }
        }
        return result;
    }
    function getNums() public view returns(uint[] memory) {
        return nums;
    }
    function assign(uint _to, uint[] memory _nums) public{
        nums = _nums;
        nums[_to] = uint256(M);
    }
    function findNums() public view returns(uint[]) {
        return nums;
    }
    function storeNumsInArrays() public pure returns(uint256[] memory){
        uint[] memory memoryNums;
        uint numsLength = nums.length;
        for(uint i = 0; i < numsLength; i++) {
            memoryNums.push(nums[i]);
        }
        return memoryNums;
    }
}
