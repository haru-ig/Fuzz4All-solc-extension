pragma solidity ^0.8.0;
contract ArrayInitializer {
    uint[12] a;
    function updateArray() public {
        a[7] = a[7-1];
    }
}
