pragma solidity ^0.8.0;
interface Accessor {
    function read() public returns(uint256);
    function write(uint256 m) public;
}
