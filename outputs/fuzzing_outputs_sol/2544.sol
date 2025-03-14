pragma solidity ^0.8.0;

contract Caller
{
  constructor(uint256 value) {
    fallbackValue = value;
  }
  fallbackValue;
  function test1() public {
    CallerContract.fallbackValue = 8;
  }
  function test2() public {
    CallerContract.fallbackValue = 9;
    CallerContract.fallbackValue = 10;
    CallerContract.fallbackValue = 20;
    CallerContract.fallbackValue = 30;
    CallerContract.fallbackValue = 40;
    CallerContract.fallbackValue = 50;
    CallerContract.fallbackValue = 60;
    CallerContract.fallbackValue = 70;
  }
}
contract CallerContract is NoFallbackInterface
{
  uint256 public fallbackValue;
  modifier payableFallback(uint256 param) {
    fallbackValue += param;
    _;
  }
}



pragma solidity ^0.8.0;
contract CallTest
{
  uint256 public fallbackValue;
  function test1() public payable {
    fallbackValue = 2;
    CallTestContract.fallbackValue = fallbackValue+1;
    CallTestContract.fallbackValue = fallbackValue+2;
    CallTestContract.fallbackValue = fallbackValue+3;
    CallTestContract.fallbackValue = fallbackValue+4;
    CallTestContract.fallbackValue = fallbackValue+5;
    CallerContract(fallbackValue).test1{value:fallbackValue}(20);
    CallerContract(fallbackValue).test2{value:fallbackValue}(30);
  }
}
contract CallerContract {
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue();
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue();
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue;
    fallbackValue
