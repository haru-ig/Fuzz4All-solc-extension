pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[][3] memory a;
        a[0] = new uint256[](3);
        a[1] = new uint256[](30);
        a[2] = new uint256[](42);
    }
}
