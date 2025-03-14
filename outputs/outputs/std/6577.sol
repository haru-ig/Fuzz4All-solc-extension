pragma solidity ^0.8.0;
contract Mutate16 {
    uint256 private x;
    uint256 public y;
    function f() public {
        x = 1;
        y = 2;
    }
	uint256 public f() {
        return x + y;
        y = x + y;
        y = x + y;
    }
    uint256 public g;
}
