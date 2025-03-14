pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 87;
    uint[] nums;
    function setNums(uint[] calldata nums, uint[] calldata nums2) public {
        uint min = nums[0];
        for (uint i = 1; i < nums.length; i++) {
            if (nums[i] < min) {
                min = nums[i];
            }
        }
        nums = nums2;
    }
    function getMin() public view returns (uint){
        uint min = nums[0];
        for (uint i = 1; i < nums.length; i++) {
            if (nums[i] < min) {
                min = nums[i];
            }
        }
        return min;
    }
}
contract ArrayAccess is ArrayModification {
    uint constant M = 87;
    uint[] arr;
    uint[] x;
    uint[] y;
    uint[] z;
    function setNums() public {
        uint[] memory temp = new uint[](5);
    }

    function getNums() public view returns(uint[] memory, uint[] memory){
        require(arr!= null);
        return arr, x, y;
    }

    function getNums2() public view returns(uint[][] memory, uint[] memory){
        require(arr!= null);
        return nums, nums2;
    }

    function initNums() public {
        arr = new uint[](5);
        arr[0] = 5;
        arr[1] = 8;
        arr[2] = 19;
        arr[3] = 32;
        arr[4] = 61;
    }

    function assignArray() public {
        nums = new uint[](5);
        nums2 = new uint[](5);
        nums[0] = 1;
        nums[1] = 2;
        nums[2] = 3;
        nums[3] = 4;
        nums[4] = 6;
        nums2[0] = 9;
        nums2[1] = 11;
        nums2[2] = 13;
        nums2[3] = 15;
        nums2[4] = 18;

        x = new uint[](2);
        x[0] = 2;
        x[1] = 4;

        y = new uint[](2);
        y[0] = 1;
        y[1] = 3;
        z = new uint[](5);
