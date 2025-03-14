pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[] memory a;
        a = new uint256[](3);
        a = new uint256[](30);
        a = new uint256[](42);
    }
}
