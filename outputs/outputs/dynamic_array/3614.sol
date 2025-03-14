pragma solidity ^0.8.0;
contract C {
    uint256[] memory a;
    function c() public {
        a = new uint256[](3);
        a[0] = 45;
        a[1] = 644;
        a[2] = 2;
        a[1] = 123;
    }
}
