pragma solidity ^0.8.0;
contract EquivalentFallbackExample {
    contract TestWithFallback is EquivalentFallbackExample2 {
        function receive() external payable {}
    }
}
