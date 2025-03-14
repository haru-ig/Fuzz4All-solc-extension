pragma solidity ^0.8.0;
contract Test {
    uint public k = 3;
    function set() public { k = 6; }
    function get() public view returns (uint256){ return k; }
}
