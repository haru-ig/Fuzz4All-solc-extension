pragma solidity ^0.8.0;
contract CallerFallback2 {
    receive() external payable {
    }
    fallback() external payable {
    }
}
