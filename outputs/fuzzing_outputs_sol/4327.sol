pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    mut uint internal x;
    receive() external payable {
        x = 12;
    }
    fallback() external payable {}
}
