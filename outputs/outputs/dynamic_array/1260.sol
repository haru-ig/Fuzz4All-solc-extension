pragma solidity ^0.8.0;
contract MutatedArraySizeValidation {
    uint256[10] a;
    constructor ()
    {
        a[0] = 10;
    }
    function updateArray() public {
        a[10] = 20;
    }
}
