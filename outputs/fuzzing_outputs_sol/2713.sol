pragma solidity ^0.8.0;
contract Caller {
    function payableFallback() public payable { revert("Fallback not called"); }
    function receive() public payable { revert("Fallback not called"); }
}
