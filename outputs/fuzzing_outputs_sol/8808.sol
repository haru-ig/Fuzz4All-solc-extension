pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Test {
  uint public constant value1 = 10;



  function f1() public {
    TestCaller testCaller;
    uint public constant value2 = 11;
  }

  function f2(uint x2) public{
    uint public constant value3;
  }

  function f3(uint x1) public {
    bytes memory calldata bytesData;
    TestCaller testCaller;
    require(bytesData.length == 4);
    require(testCaller.value >= value1);
    require(testCaller.value >= value2);

  }
}
