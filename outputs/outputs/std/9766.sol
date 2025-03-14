pragma solidity ^0.8.0;
contract MutateNeg {
    uint256 public z;
    function mutateNegative() public {
        z -= 1;
    }
}
