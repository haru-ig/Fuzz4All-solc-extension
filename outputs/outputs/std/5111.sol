pragma solidity ^0.8.0;
contract Array {
    function getMin(uint[] memory arr) internal view returns (uint){ return (arr.length <= 1)? arr[0] : arr[0] <= arr[1]? arr[0] : arr[1]; }
    function getMax(uint[] memory arr) internal view returns (uint){ return (arr.length <= 1)? arr[0] : arr[0] >= arr[1]? arr[0] : arr[1]; }
    function getSum(uint[] memory arr) internal view returns (uint){ uint sum = 0; uint len = arr.length; for (uint i = 0; i < len; i++){ sum += arr[i]; } return sum; }
}
