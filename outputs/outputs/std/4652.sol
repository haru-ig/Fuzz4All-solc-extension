pragma solidity ^0.8.0;
contract Array1 {
    function g(uint256[] memory numbers) public pure returns (uint256, uint256) {
        uint256 minValue = uint256(min(numbers));
        uint256 maxValue = uint256(max(numbers));
        return (minValue, maxValue);
    }
    function e(uint256 number) private view returns (uint256[]) {
        return [number];
    }
    function min(uint256[] memory numbers) private view returns (uint256) {
        require(numbers.length > 0, "Empty array");
        uint256 minValue = numbers[0];
        for (uint256 i = 1; i < numbers.length; i++) {
            require(numbers[i] < minValue, "min");
            minValue = numbers[i];
        }
        return minValue;
    }
    function max(uint256[] memory numbers) private view returns (uint256) {
        require(numbers.length > 0, "Empty array");
        uint256 maxValue = numbers[0];
        for (uint256 i = 1; i < numbers.length; i++) {
            require(numbers[i] > maxValue, "max");
            maxValue = numbers[i];
        }
        return maxValue;
    }
}
