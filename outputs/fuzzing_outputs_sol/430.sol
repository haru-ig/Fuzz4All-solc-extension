pragma solidity ^0.8.0;
contract CallerWithFallback {
    receive() external payable {
        revert("no fallback");
    }
    fallback() external payable {
        revert("fallback");
    }
}
