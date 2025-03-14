pragma solidity ^0.8.0;
library ArrayMath {
    function max(uint a, uint b) internal pure returns (uint)
    {
        return a > b? a : b;
    }
    function min(uint a, uint b) internal pure returns (uint)
    {
        return a < b? a : b;
    }
    function sum(uint[] memory arr) internal pure returns (uint) {
        uint temp = arr[0];
        for (uint i = 1; i < arr.length; i++) {
            temp += arr[i];
        }
        return temp;
    }
}
