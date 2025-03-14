pragma solidity ^0.8.0;
contract Caller {
  uint8 test;
  function test() public pure returns(uint8) { return test; }
  function testWithFallback() public pure onlyFallback { result = test() + 1; }
  function testCall() public returns(uint8) { Caller(msg.sender).testWithFallback(); Caller(msg.sender).testWithFallback(); return 1; }
  function testCallWithData() public returns(uint8) { Caller{value: 10}().testWithFallback(); Caller{value: 5}().testWithFallback(); return 1; }
  function testCallWithResult() public returns(uint8) { uint8 s = test(); return s + 2; }
  function testCallWithResultAndData() public returns(uint8) { uint8 s = testCall(); return s + 2; }
  function testPayable() public payable { result = msg.value; }
  function testInvalidFallback() public payable { Caller{value: 10}().testWithFallback; Caller{value: 10}().testWithFallback; }
  uint8 private result;
}
