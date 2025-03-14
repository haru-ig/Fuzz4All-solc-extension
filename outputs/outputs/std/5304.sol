pragma solidity ^0.8.0;
contract Array {
    function findMin(uint256[] memory data, uint256 minIndex) internal view returns (uint256) {
        uint256 minValue = data[minIndex];
        for(uint256 i = minIndex + 1; i < data.length; i++) {
            if (data[i] < minValue)
                minValue = data[i];
        }
        return minValue;
    }
    function findMax(uint256[] memory data, uint256 minIndex) internal view returns (uint256) {
        uint256 maxValue = data[minIndex];
        for(uint256 i = minIndex + 1; i < data.length; i++) {
            if (data[i] > maxValue)
                maxValue = data[i];
        }
        return maxValue;
    }
    function findSum(uint256[] memory data, uint256 minIndex) internal view returns (uint256) {
        uint256 sumValue = 0;
        for(uint256 i = minIndex; i < data.length; i++) {
            sumValue += data[i];
        }
        return sumValue;
    }
    function buildArray() internal view returns (uint256[] memory) {
        uint256[] memory data = new uint256[](10);
        data[0] = 1;
        data[1] = 32;
        data[2] = 5;
        data[3] = 6;
        data[4] = 2;
        data[5] = 3;
        data[6] = 4;
        uint256 minValue = 8;
        uint256 maxValue = 25;
        uint256 result = findMin(data, minValue);
        return [result, data, minValue, maxValue];
    }
}
