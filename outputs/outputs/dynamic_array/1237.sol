pragma solidity ^0.8.0;
contract ArrayInitializer4 {
    uint[14] a;
    function updateArray() public {
        a[6] = a[6-1] + a[6];
    }
}
