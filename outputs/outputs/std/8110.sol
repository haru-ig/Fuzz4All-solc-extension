pragma solidity ^0.8.0;
contract Array {
    function min(uint[] memory arr1, uint[] memory arr2) public pure returns (uint) {
        if (arr1.length < arr2.length) {
            return arr2.min(arr1);
        } else {
            return arr1.min(arr2);
        }
    }
}
