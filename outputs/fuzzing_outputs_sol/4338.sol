pragma solidity ^0.8.0;
contract TestMutatedFallbackCallerNoModifier {
    uint internal x;
    fallback() external payable {}
    receive() external payable {
        x += 12;
    }
}
