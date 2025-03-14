pragma solidity ^0.8.0;
contract Array {
    uint256[] private numbers;
    function getArray(uint256 idx) public view returns (uint256) {
        return numbers[idx];
    }
    function setArray(uint256 idx, uint256 val) public {
        numbers[idx] = val;
    }
    function arrayMin() public view returns (uint256) {
        uint256 min = numbers[numbers.length - 1];
        uint256 j;
        assembly { j := mload(numbers) }
        for (j; j > 0; j--) {
            if (numbers[j - 1] > min) min = numbers[j - 1];
        }
        return min;
    }
    function arrayMax() public view returns (uint256) {
        uint256 max = numbers[0];
        uint256 j;
        assembly { j := mload(numbers) }
        for (j; j < numbers.length; j++) {
            if (numbers[j] > max) max = numbers[j];
        }
        return max;
    }
    function sum() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            sum = sum + numbers[i];
        }
        return sum;
    }
    function getArray1() view public returns (uint256[] memory) {
        return numbers;
    }
    function sumElement() public sum() returns (uint256 ) {
        return sum;
    }
    function setArray1(uint256[] memory nums) public {
        numbers = nums;
    }
    function setArray2(uint256[] memory nums) public Mutate_array_2(numbers, nums) {
        numbers = nums;
    }
}
