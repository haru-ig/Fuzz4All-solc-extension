pragma solidity ^0.8.0;
contract Mutate20 is Mutate16 {
    modifier withValue(uint256 v) { mutated = v; _; }
    uint256 public mutated;
    function mutateFromFirst() public pure withValue(1) returns (uint256) { return 1; }
    function mutateFromSecond() public pure withValue(2) returns (uint256) { return 2; }
    function mutateFromThird() public pure withValue(3) returns (uint256) { return 3; }
    function mutateFromFourth() public pure withValue(4) returns (uint256) { return 4; }
}
