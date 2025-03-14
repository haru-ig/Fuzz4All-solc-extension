pragma solidity ^0.8.0;
contract NoSematic {
    uint256 public x;
    function f() public {
    if (x <= 0) {
        x *= 2;
    }
   else {
        x >>= 1;
    }
    }
}
