pragma solidity ^0.8.0;
contract ContractTest {
  uint256 state;
  uint256 public storedData;
  uint256 public externalData;

  fallback() payable external {}

  constructor() {
    storedData = 50;
    externalData = 0;
  }


  function doSomeAction() public payable {
    state++;
  }


  function sendEther() external {
    storedData = storedData + payable(msg.value);
  }


  function deposit(uint256 value) external {
    emit LogDeposit(msg.value);
    storedData = storedData - value;
    externalData = 0;
    assert(storedData == value.sub(payable(msg.value)));
  }

  function testAction() public {
    state = 44;
    storedData = 5000;
    require(storedData == 24999);
    assert(state == 34);
  }
}
