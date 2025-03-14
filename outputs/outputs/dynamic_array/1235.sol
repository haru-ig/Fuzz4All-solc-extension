pragma solidity ^0.8.0;
contract ArrayInitializer {
    bytes2[1] a;
    function updateArray() public {
        a[true] = a[true];
    }
}
