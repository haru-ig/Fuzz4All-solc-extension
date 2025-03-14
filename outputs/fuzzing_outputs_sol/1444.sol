pragma solidity ^0.8.0;
contract LowLevelFallbackExample is LowLevelFallbackExampleInterface {
    function originalFallback() external {
    }
    function lowLevelFallback() external payable {
    }
}
pragma solidity ^0.8.0;
