pragma solidity ^0.8.0;
contract Test
{
  uint8 public constant constant8 = 1;
  uint8 public constant constant7 = 2;
  uint8 testByte;
  function test1(uint8 param) public {
    if(param>constant8) {
      uint8 c = param - constant7;
      testByte = c;
    }
    else {
      testByte = param + constant7;
    }
  }
  uint8 public constant constant15 = 15;
  function test2(uint8 param) public {
    require(param == constant15);
  }
}
address payable a;
contract Test
{
  bytes32 constant constant10 = "hello";
  address testAddress;
  function test1(address paramAddress) public payable {
    a.transfer(paramAddress, testAddress.balance + 1);
  }
  address public constant constant14;
  function test2(address paramAddress) public {
    require(paramAddress == constant14);
  }
}
