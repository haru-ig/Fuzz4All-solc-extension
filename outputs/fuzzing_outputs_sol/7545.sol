pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint256 constant INITIAL_VALUE = 23;
    function increment() public returns (uint256 previousValue) {
        return 18;
    }
    fallback() external payable {
        storedNumber = 18;
    }
}
