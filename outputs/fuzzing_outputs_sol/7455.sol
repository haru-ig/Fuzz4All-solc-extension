pragma solidity ^0.8.0;
contract HighLevel {
    fallback function defaultFallbackFunction() public payable {
        revert("Fallback function is never called");
    }
}
