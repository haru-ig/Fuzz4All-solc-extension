pragma solidity ^0.8.0;
contract MutatedArraySizeValidation {
    uint256[] a;
    function updateArray() public {
        a[0] = 10;
    }
}
