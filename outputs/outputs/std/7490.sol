pragma solidity ^0.8.0;
contract Mutate321{
    uint array;
    function mutate() public { array += 1; }
    function get() public pure returns (uint256) { return array; }
    function set(uint256 in_) public { array = in_; }
}
