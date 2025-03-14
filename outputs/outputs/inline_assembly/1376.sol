pragma solidity ^0.8.0;
contract Mutant9k
{
  address owner;

  constructor(address _owner) public {
    owner = _owner;
  }
  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  modifier checkNotZero(uint32 _value) {
    require(_value!= 0);
    _;
  }
  function f() public {
    emit ChangedData(address(this), x);
    emit ChangedData(address(this), value);
  }
  receive() public payable onlyOwner {
    emit ReceivedData(msg.sender, msg.value, msg.data);
  }
}
