pragma solidity ^0.8.0;
contract Caller2 {
    function fallback() public payable { revert("Fallback not called"); }
    function payableFallback() public payable { revert("Fallback not called"); }
    function receive() public payable { revert("Fallback not called"); }
}
