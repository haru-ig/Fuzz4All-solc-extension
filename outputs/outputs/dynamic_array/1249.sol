pragma solidity ^0.8.0;
contract MutatedArrayInitializer {
    uint256[] public a;
    function updateArray() public {
        uint256 l = a[9-1];
        a[9] = l;
    }
}
