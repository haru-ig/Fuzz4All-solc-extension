pragma solidity ^0.8.0;
library SomeLib {

    function foo(uint _value, uint _iterations) public pure {
        uint _newValue = _iterations * _value - (_iterations >> 1) & 255;
        assembly {
            #0x4154c13e000000000000000000000000000000000000000000000000000001: _value := add(mload_(_value), and(mload_(_value), _iterations))
            #0x4154c13e0000000000000000000000000000000000000000000000000000000002: _newValue := mul(mload_(_newValue), mload(_newValue))
            #0x4154c13e00000000000000000000000000000000000000000000000000000000000: return(_newValue)
        }
    }
}
using namespace SomeLib;
contract SomeContract {
    address public contractAddress;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() {
       contractAddress = address(this);
    }
    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }
    modifier ifLessThan(uint _lowerLimit, uint _amount, uint _upperLimit) {
      require(_lowerLimit < _amount && _amount < _upperLimit);
      _;
    }
    function increase(uint _amount) public onlyContract ifLessThan(0, _amount, 100) {
        balance += _amount
