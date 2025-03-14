pragma solidity ^0.8.0;
contract StaticArrayInitializer {
    uint256[] public a;
    function updateArray() public {
        a[0] = 1;
        a[9-1] = 9;
    }
}
