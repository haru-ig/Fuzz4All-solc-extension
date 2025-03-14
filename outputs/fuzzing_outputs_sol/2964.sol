pragma solidity ^0.8.0;
interface FallbackReceivable {
    function fallback() external payable;
}
