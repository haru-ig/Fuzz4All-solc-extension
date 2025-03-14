pragma solidity ^0.8.0;
contract BugsABICoder4{
  uint16 variable;
  enum Test {X, Y, Z}
  address public owner;
  uint8 public testByte8;
  uint16 internal testUint16;
  function returnVariable() public view returns(uint16){
    return variable;
  }
  function returnTest() public view returns(bool){
    return true;
  }
  function returnTest2() public view returns(Test){
    return Test.Z;
  }
  function returnAddress() public view returns(address){
    return owner;
  }
  function testBoolEqualTrue(bool x) public pure returns(bool){
    return x;
  }
  function callTest() public returns(Test){
    return Test.X;
  }
  function returnInternalUint16() public view returns(uint16){
    return testUint16;
  }
  function changeTestUint16(uint16 x) public returns(uint16){
    testUint16=x;
    return testUint16;
  }
}
