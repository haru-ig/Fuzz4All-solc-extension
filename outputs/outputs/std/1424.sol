pragma solidity ^0.8.0;
contract ArrayModification {
    uint constant M = 87;
    uint arr1[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    uint arr2[] = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
    uint arr3[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    uint arr4[] = [88, 87, 86, 85, 84, 83, 82, 81, 80, 79];
    uint arr5[] = [7, 6, 5, 4, 3, 2, 1, 0, 0, 0];
    uint arr6[] = [5, 4, 3, 2, 1, 0, 0, 0];
    uint arr7[] = [2, 1, 0];
    uint arr9[] = [77, 76, 75, 74, 73, 72, 71, 70, 69, 68];
    uint arr10[] = [6, 5, 4, 3, 2, 1, 0];
    function setNums(uint[] memory nums) public {
        nums2 = nums;
    }
    uint arr8[];
    function getMin() public view returns (uint) {
        uint min = nums2[0];
        for (uint i = 1; i < nums2.length; i++) {
            if (nums2[i] < min) {
                min = nums2[i];
            }
        }
        return nums2[0];
    }
    function getSet() public view returns (uint[] memory) {
        return nums2;
    }
    function getSet3() public view returns (uint[7] memory) {
        return nums3;
    }
    function setNums3(uint[] memory nums) public {
        nums3 = nums;
    }
}
