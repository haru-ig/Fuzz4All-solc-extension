pragma solidity ^0.8.0;
interface Receivable {

    event FallbackFeeReceived(address indexed _indexedAddress, address indexed _valueAddress, uint _value);
    function tokenFallback(address _victim, uint _value, address _recipient) external payable returns (uint);
}
