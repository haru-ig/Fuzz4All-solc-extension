pragma solidity ^0.8.0;
interface FallbackProvider {
    function fallback(uint) external payable;
}

contract Caller is FallbackReceivable {
    function acceptFallback(uint256) external {

    }
}
