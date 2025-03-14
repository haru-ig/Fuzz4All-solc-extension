pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[] memory x = new uint256[](3);
        x = new uint256[](0).fill(42);
    }
}
