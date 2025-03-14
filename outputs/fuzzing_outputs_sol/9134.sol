pragma solidity ^0.8.0;
contract FallbackCaller {
    using Address for address payable;
    address public _address;
    constructor(address payable _address) {
    }
    receive() external payable {
      _address = address(msg.sender);
      require(address(this).balance >= msg.value, "FallbackCaller: insufficient balance");
      _address. transfer(msg.value);
    }
}
contract SendEtherFallbackCaller {
  struct Record { uint256 count; bool executed; }
  address payable _address;
  constructor(address payable _address) {
  }
  receive() external payable {
    uint256 gas = 1000000;
    uint256 gasUsed;
    (,,_,record) = _executeAndCheck("SendEtherFallbackCaller: cannot pay more than 100M in Ether");
    require(record.executed, "FallbackCaller: fallback call failed, transfer not executed");
    uint256 valueAmount = gas * gasUsed / 1000000;
    record.count++ ;
    valueAmount. div(10000). div(100). mul(gasUsed);
    _address. transfer(valueAmount);
    for(uint256 i = 0; i < record.count; i++) {
     require(address(this).balance >= gas * gasUsed, "FallbackCaller: insufficient balance");
    }
  }
  function _executeAndCheck(string calldata message) private view returns (uint256 gas, uint256 gasUsed, uint256 count, Record memory record) {
    (gas, gasUsed,,,,) = checkCallReturn(_address.receive.functionSelector());
    require(gasUsed <= 100, message);
    count = gas / 1000;
    if (count == 0) {
      count = 1;
    }
    record.executed = true;
    record.count = count;
  }
}
