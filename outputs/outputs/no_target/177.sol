pragma solidity ^0.8.0;
contract Test {
    uint public k;
    function set(uint256 x) public { k = x; }
    function get() public view returns (uint, uint){ return (0, k); }
}
