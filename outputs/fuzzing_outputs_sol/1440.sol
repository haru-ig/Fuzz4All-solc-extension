pragma solidity ^0.8.0;
contract LowLevelFallbackExampleNonPayable{
    function originalFallback() external {
    }
    function lowLevelFallbackPayable() external payable
    {
    }
}
