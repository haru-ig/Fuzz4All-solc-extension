pragma solidity ^0.8.0;
contract ModifiedMutatedFallbackExample{
    function mutatedFallback() external {
    }
}

pragma solidity ^0.8.0;
contract ModifiedMutatedFallbackExample{
    function originalFallback() external {
    }
    function mutatedFallback() external {
    }
}
