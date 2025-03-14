pragma solidity ^0.8.0;
contract FallbackInterface {
    function fallback(address, uint, bytes memory) external payable;
}
