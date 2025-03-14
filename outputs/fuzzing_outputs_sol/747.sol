pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint256 public etherBalance;
    address payable public fallbackAddress;
    constructor(address payable _fallback) {
        fallbackAddress = _fallback;
    }
    receive() external payable {
        etherBalance += msg.value;
        fallbackAddress.transfer(msg.value);
    }
    fallback() external {   }
}
