pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerNoModifier {
    uint internal x;
    function fallback() public payable {
        x = 12;
    }
}
