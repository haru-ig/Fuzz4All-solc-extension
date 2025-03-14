pragma solidity ^0.8.0;
contract Caller {
  function test(address _a) public {
    (address b, uint _b) = _a;
    _b = 9999;
    _a == _a;
    _a = address(this);
    _a;
    _a.call{value: 1000}(abi.encode("Hi"));
    _a;
    _a.send{value: 1000}(abi.encode("Hi"));
    _a;
    _a.delegatecall{value: 1000}(abi.encode("Hi"));
    _a;
    _a.staticcall{value: 1000}(abi.encode("Hi"));
    _a;
  }
}
