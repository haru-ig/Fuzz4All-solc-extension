pragma solidity ^0.8.0;
contract C {
    uint256[] a;
    function c() public {
        a = new uint256[](3);
        a;
        a[0];
    }
}
