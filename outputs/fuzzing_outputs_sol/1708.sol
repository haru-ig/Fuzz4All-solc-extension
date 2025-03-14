pragma solidity ^0.8.0;
contract FallbackMutator {
  address payable _contract;
  event Fallback(bool success, uint value);
  constructor (address payable contract_) {
    _contract = contract_;
  }
  function fallback (uint _value) public {
    _doFallback(msg.sender, _value);
  }

  function _doFallback(address _sender, uint _value) private {
    _contract.transfer(_value);
    _contract.transfer(_contract.balance);
    emit Fallback(true, _value);
  }
}
