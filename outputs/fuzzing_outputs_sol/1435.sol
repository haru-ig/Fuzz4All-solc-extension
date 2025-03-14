pragma solidity ^0.8.0;
contract FallbackMutatedExample is ModifiedMutatedFallbackExample {
    function originalFallback() public {
        self.originalFallback();
    }
    function mutatedFallback() payable public {
        self.mutatedFallback();
    }
}
