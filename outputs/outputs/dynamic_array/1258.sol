pragma solidity ^0.8.0;
contract DynamicArrayCleanup {
    uint256[] a;
    function updateArray() public {
        a[10] = 10;
    }
    function resetArray() public {
        a.length = 0;
    }
}
