pragma solidity ^0.8.0;
contract ArrayMutationsBis6 {
    function getSum2(uint256[] memory integers) public view returns (uint) {
        uint sum = 0;
        uint len = integers.length;
        for(uint i = 0; i < len; i++) {
            sum += integers[i];
        }
        return sum;
    }
}


pragma solidity >=0.6.0 <=0.8.0;
library Array {



    function getMinimum(uint256[] memory integers) public pure returns (uint256) {
        uint256 min = integers[0];
        for (uint i = 1; i < integers.length; i++) {
            require(min < integers[i], "Error: min < i");
            min = integers[i];
        }
        return min;
    }


    function getMaximum(uint256[] memory integers) public pure returns (uint256) {
        uint256 max = integers[0];
        uint256 maxValue = maxValue(integers);
        for (uint i = 1; i < integers.length; i++) {
            uint256 value = integers[i];
            require(max > value, "Error: max > i");
            max = value;
            maxValue = value;
        }
        return maxValue;
    }


    function getSum(uint256[] memory integers) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint i = 0; i < integers.length; i++) {
            require(0 <= integers[i], "Error: i < 0");
            sum += integers[i];
        }
        return sum;
    }


    function maxValue(uint256[] memory integers) public pure returns(uint256) {
        uint256 max = integers[0];
        uint256 maxValue = maxValue(integers);
        for (uint i = 1; i < integers.length; i++) {
            uint256 value = integers[i];
            require(max > value, "Error: i > max");
            max = value
