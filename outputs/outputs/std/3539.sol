pragma solidity ^0.8.0;


contract Test {
    function sumOfNumbers(uint256 numbers1, uint256 numbers2) public pure returns (uint256) {
        return numbers1 + numbers2;
    }
    function squareOfNumbers(uint256 numbers) public pure returns (uint256) {
        return numbers * numbers;
    }
}
