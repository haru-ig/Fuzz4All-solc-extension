pragma solidity ^0.8.0;
contract Array {
    function contains(uint256[] memory arr, uint256 value) public returns (bool) {
        return (indexOf(arr, value) >= 0);
    }
    function add(uint256[] memory arr1, uint256[] memory arr2) public {
        for (uint256 i = 0; i < arr1.length; i++) {
            arr1[i] += arr2[i];
        }
    }
}
