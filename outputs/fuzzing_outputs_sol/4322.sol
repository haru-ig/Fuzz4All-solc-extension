pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCallerModifier {
    uint internal x;
    function() external payable {}
    receive() external payable {
        x = 12;
    }
}
