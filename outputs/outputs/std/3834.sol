pragma solidity ^0.8.0;
 contract BaseArray {
    function findMinIn(uint256[] memory data) internal pure returns (uint256) {
        uint256 min = data[0];
        for(uint256 i = 1; i < data.length; i++) {
            if(data[i] < min) min = data[i];
        }
        return min;
    }
    function findMaxIn(uint256[] memory data) internal pure returns (uint256) {
        uint256 max = data[0];
        for(uint256 i = 1; i < data.length; i++) {
            if(data[i] > max) max = data[i];
        }
        return max;
    }
    function getFirstElement(uint256[] memory data) internal pure returns (uint256) {
        return data[0];
    }
    function setFirstElement(uint256[] memory data, uint256 value) internal {
       set(data, 0, value);
    }
    function getLastElement(uint256[] memory data) internal pure returns (uint256) {
        return data[data.length-1];
    }
    function setLastElement(uint256[] memory data, uint256 value) internal {
        set(data, data.length-1, value);
    }
    function getRangeStartingFromElement(uint256[] memory data, uint256 element) internal pure returns(uint256[]) {
        uint256[] memory range = new uint256[](element-data[0]);
        for(uint256 i = 0; i < element; i++) {
            range[i] = data[i];
        }
        return range;
    }
    function getRangeStartingFromIndex(uint256[] memory data, uint256 startIndex) internal pure returns (uint256[]) {
        uint256 elementCount = data.length > startIndex? data.length - startIndex : 0;
        uint256[] memory range = new uint256[](elementCount);
        for(uint256 i = 0; i < elementCount; i++) {
            range[i] = data[startIndex + i];
        }
        return range;
