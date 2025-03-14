pragma solidity ^0.8.0;
contract Arrays {
    uint256[] array;
    function updateArray(uint256 val) public {
        array[0] = val;
    }
    function findArrayMin(uint256 arrLen) public view returns (uint256 min) {
        uint256 max = max(0, arrLen - 1);
        for (uint256 i = 1; i <= max; ) {
            if (compare(i, i) >= 0)
                return i;
            i += 1;
        }
    }
    function findArrayMax(uint256 arrLen) public view returns (uint256 max) {
        uint256 min = min(0, arrLen - 1);
        for (uint256 i = min; i < arrLen - 1; i++) {
            if (compare(i, i + 1) > 0) {
                return max(i, i + 1);
            }
        }
    }
    function compare(uint256 x, uint256 y) internal pure returns (int256 res) {
        return x - y;
    }
}
