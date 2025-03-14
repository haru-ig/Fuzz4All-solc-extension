pragma solidity ^0.8.0;
contract Array {
    function findMax(uint256[] memory numbers) internal view returns (uint256) {
        uint256 maxIndex = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            uint256 currentValue = numbers[i];
            if (currentValue > numbers[maxIndex]) {
                maxIndex = i;
            }
        }
        return numbers[maxIndex];
    }
}
