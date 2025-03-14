pragma solidity ^0.8.0;
contract ArrayInitializer {
    uint256[] public a;
    function updateArray() public {
        uint256 l = a[7-1];
        l = l + 1;
        a[7] = l;
    }
}
