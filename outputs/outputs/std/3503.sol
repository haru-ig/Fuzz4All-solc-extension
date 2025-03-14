pragma solidity ^0.8.0;
contract ArrayInterface {
    function length() pure public returns(uint256);
    function get(uint256 index) view public returns (uint256);
    function set(uint256 index, uint256 element) public;
    function push(uint256 element) public;
}
