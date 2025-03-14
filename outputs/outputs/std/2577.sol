pragma solidity ^0.8.0;
contract Array
{
    function sumMax(uint[] memory arr) public pure returns (uint max, uint min) {
        uint tempMax = arr[0];
        uint tempMin = arr[0];
        for (uint i = 1; i < arr.length; i++) {
            tempMax = ArrayMath.max(tempMax, arr[i]);
            tempMin = ArrayMath.min(tempMin, arr[i]);
        }
        return (tempMax, tempMin);
    }
}
