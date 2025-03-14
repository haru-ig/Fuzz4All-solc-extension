pragma solidity ^0.8.0;
contract MutatedArrayMemoryValidation {
    uint256[] a;
    function updateArray() public {
        a.push(uint56(now));
    }
}
