pragma solidity ^0.8.0;
contract BadArrayAccess {

    function test() public returns (uint256[] memory) {
        uint256[] memory x = new uint256[](8);
        x[2] = 42;
        uint256[] memory y = new uint256[](8);
        return x;
        } }
