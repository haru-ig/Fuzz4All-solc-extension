pragma solidity ^0.8.0;
contract ArrayInitializer {
    uint256[] public a;
    function updateArray() public {
        a[7] = a[7-1];
    }
}
