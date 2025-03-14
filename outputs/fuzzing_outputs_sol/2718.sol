pragma solidity ^0.8.0;
contract Caller {
    function receive() public payable { revert("Fallback not called"); }
}
