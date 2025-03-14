pragma solidity ^0.8.0;
contract Array {
    uint public array;
    function findMin(uint[] memory numbers) internal pure returns (uint, uint) {
        uint min;
        for (uint i = 0; i < numbers.length; ++i) {
            if (numbers[i] < min) {
                min = numbers[i];
            }
        }
        return (array, min);
    }
}
