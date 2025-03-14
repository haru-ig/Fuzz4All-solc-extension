pragma solidity ^0.8.0;
contract MutatedArraySizeValidation {
    uint256[] a;
    constructor ()
    {
        a.push(10);
    }
    function updateArray() public {
        a.push(20);
    }
}
