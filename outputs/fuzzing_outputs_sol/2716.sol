pragma solidity ^0.8.0;
contract Caller {
    function payableFallback() public pure { revert("Fallback not called"); }
    function receive() public pure { revert("Fallback not called"); }
}
