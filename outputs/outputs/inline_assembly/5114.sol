pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 0;
  constructor(address payable payee) public {
    to = payee;
  }
  function mutatedCounter(mapping(address => uint) internal mapping_) external returns (uint) {
    uint prev = _counterOf(mapping_, msg.sender);
    _updateCounter(mapping_, msg.sender, prev.add(1));
    return _counterOf(mapping_, msg.sender);
  }
  function getCounter(uint sender) public view returns (uint) {
    return _counterOf(mapping_, sender);
  }
  function checkCounter() external returns (uint) {
    return _counterOf(mapping_, msg.sender);
  }
  function _counterOf(mapping(address => uint) internal mapping_, address _account) private view returns (uint) {
    uint counter;
    mapping_[_account] == block.timestamp? (counter = mapping_[_account]) : (counter = 0);
    mapping_[_account] = mapping_[_account].sub(1);
    mapping_[_account] = block.timestamp;
    return counter;
  }
  function _updateCounter(mapping(address => uint) internal mapping_, address _account, uint _counter) private {
     mapping_[_account] = block.timestamp;
    mapping_[_account] = _counter;
  }
}
