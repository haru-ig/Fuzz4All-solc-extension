pragma solidity ^0.8.0;
contract NoSematic {
    uint256 public x;
    function f() public {
        x = (uint256)((uint160)x >> 1);
    }
}
