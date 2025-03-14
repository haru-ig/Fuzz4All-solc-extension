pragma solidity ^0.8.0;
contract CallMutabilityOne {
  uint public value1;
  uint public value2;
  uint public num = 1;
  uint  constant maxNum = 1;

  constructor() {
    value1 = 1;
    value2 = 2;
    num = 1;
  }

  function setMaxNum() public {
    num = maxNum;
  }

  function increment() public {
    num = num + 1;
  }

  function decrement() public {
    num = num - 1;
  }

  function doTransfer() public payable {
    address payable toAddress = payable(0x111111111111111111111111111111111111111111111111111111111111111);
    toAddress.transfer(value1);
    num = maxNum;
  }
}
contract CallMutabilityThree {
  uint public value1;
  uint public value2;
  uint public result;
  bool public status = true;



  modifier onlyChainEnd {
    status = false;
    _;
    status = true;
  }

  constructor() {
    value1 = 1;
    value2 = 2;
    result = 0;
    num = 1;
  }

  function setResult(uint result) public {
    result = result;
    num = 1;
  }

  function setResultWithoutModifier(uint result) public {
    require(this.testForBoolean(status, false), "Status should be " + toString(false));
    result = result;
    num = 1;
  }

  function testForBoolean(bool s, bool e) pure internal returns (bool) {
    if (bytes32(e)==bytes32("true"))
        return s;
    else
        return!s;
  }

  function doTransfer() public onlyChainEnd payable {
    uint amount = num + 1;
    require(msg.value == amount, "Invalid amount.");
    uint _sum = value1 + value2 + value2 + amount;
    result = _sum;
    num = 1;
    num = maxNum;
  }

  function doResult() public onlyChain
