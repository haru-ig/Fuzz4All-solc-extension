pragma solidity ^0.8.0;
interface SimpleInterface {
  function test(uint) external returns(uint);
}
contract Caller9 is SimpleInterface{
  address payable _sender;
  constructor(address payable _address) {
    _sender = _address;
  }

  function test(uint) isSimple isPayable external {
    assert(test.value(0) == 7);
  }

  function test(uint) isSimple isPayable external payable {
    assert(test.value(0) == 7);
  }

  fallback() external payable {
    require(test.value(0)(0)[0] == 7);
  }
}
