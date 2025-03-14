pragma solidity ^0.8.0;
contract ArrayGen2 is Arrays2 {
    uint constant M = 87;
    uint num1;
    uint num2;
    uint256 num3;

    function swap(uint num1, uint num2) public {
        uint temp = num2;
        num2 = num1;
        num1 = temp;
    }
    function getNum(uint[] memory nums, uint index, uint value) public view returns (uint256) {
        return nums[index];
    }
    function getNum(uint256[] storage nums, uint index, uint value) public view returns (uint256) {
        return nums[index];
    }
    function getNum(uint[][][] storage nums, uint index, uint value) public view returns (uint256) {
        return nums[index][0][index];
    }
    function getNum(uint32[] storage nums, uint index, uint value) public view returns (uint256) {
        return uint256(nums[index]);
    }
    function getNum(uint32[] constant nums, uint index, uint value) public view returns (uint256) {
        return uint256(nums[index]);
    }
    function getNum(uint[][][][] storage nums, uint index, uint value) public view returns (uint256) {
        return nums[index][0][index][0];
    }
    function getNum(uint num) public view {
        num1 = num;
    }
    function getNum() public view returns (uint256){
        num2 = num1;
        return num2;
    }
    function getNum2() public view returns (uint[]) {
        return nums1;
    }
    function getNum30() public view returns (uint) {
        return num3;
    }
}
