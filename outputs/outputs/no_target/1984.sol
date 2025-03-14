pragma solidity ^0.8.0;
contract NoSematic {
    uint256 public x;
    function f() public {
        uint256 _x = x;
        if (0 <= _x) {
            x >>= 1;
        }
        else {
            x ^= 8;
        }
    }
}
