pragma solidity ^0.8.0;
contract Arithmetic {
    function findSumOfArrayElements(uint[] memory x) public pure returns (uint sum) {
        uint arrLength = uint(x.length);
        bool odd = arrLength % 2 == 1;
        uint result = 0;
        for(uint i = 0; i < arrLength; i = i + 2) {
            uint xValue = x[i];
            if (odd) {
                result = result + xValue;
            }
            else {
                result = (result ** 2) + xValue;
            }
        }
        return result;
    }
}
