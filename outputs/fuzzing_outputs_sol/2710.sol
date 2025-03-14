pragma solidity ^0.8.0;
contract Caller {

    function receive() external payable { revert("Caller not called"); }

    function set(uint x) public payable { revert("Caller not called"); }
}
