pragma solidity ^0.8.0;
contract C {
    function c() public {
        uint256[1] memory x = new uint256[1];
        x[0] = 42;
    }
}
