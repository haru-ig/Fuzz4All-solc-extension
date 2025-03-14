pragma solidity ^0.8.0;
contract FallbackRecipient {
    address payable fallbackContract;
    address addressToReceiveFallbackFunds;

    uint fallbackAmount;

    function __FallbackRecipient() { addressToReceiveFallbackFunds = address payable(0x6d2a9b35dD609ad9625B78F5465A0170070c5640); }
    constructor(address payable _addressToReceiveFallbackFunds_) { fallbackAmount = 20; fallbackContract = msg.sender; addressToReceiveFallbackFunds = _addressToReceiveFallbackFunds_; }
    function fallback(uint x) public pure onlyFallback { fallbackContract.transfer(addressToReceiveFallbackFunds.balance); }
}
