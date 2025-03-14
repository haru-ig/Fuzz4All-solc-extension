pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 public a;
    uint128 public b;
    uint64 public c;
    function decrease() public {
        a = a / 10;
    }
}
