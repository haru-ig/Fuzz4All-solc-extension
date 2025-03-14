pragma solidity ^0.8.0;
contract BugsABICoder5{
  uint16 constant variable=1;
  enum Test {X, Y, Z}
  uint8 public testByte8;
  uint16 internal testUint16;
  function returnVariable() public view returns(uint16){
    return variable;
  }
  function returnTest() public view returns(bool){
    return false;
  }
  function returnTest2() public view returns(Test){
    return Test.Y;
  }
  function testBool() public pure returns(bool){
   return bool(variable);
  }
  function testBoolEqualTrue(bool x) public pure returns(bool){
   return (x & True);
  }
}

pragma solidity ^0.8.0;
contract BugsABICoder6{
  uint16 constant variable;
  struct Value {
      string name;
      uint value;
  }
  mapping(address => Value) public user_address_values;
  function testCall() public returns(uint16){
   user_address_values[msg.sender].value=2;
   return (uint16(user_address_values[msg.sender].value));
  }
}
