pragma solidity ^0.8.0;
contract Calculate {
    constructor(uint256[] memory _first, uint256[] memory _second) {
        nums1 = _first;
        nums2 = _second;
    }
    function add(uint256[] memory _second) public view returns (uint256) {
        return nums1[0] + _second[0];
        int num1 = nums1[0];
        int num2 = nums2[0];
        int result = 0;
        while(true) {
            int quotient = num2 / num1;
            if(quotient == 0) {
                return result;
            }
            num2 = num2 - quotient * num1;
            result = result + quotient * 10;
            num1 ++;
        }
    }
}
