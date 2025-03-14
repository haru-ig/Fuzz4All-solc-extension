pragma solidity ^0.8.0;
contract MutatedArraySizeValidation {
    uint i;
    uint256[] a;
    constructor ();
    function increment() public {
        i++;
        a.push(i);
    }
}
