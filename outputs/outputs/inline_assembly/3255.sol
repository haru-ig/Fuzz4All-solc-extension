pragma solidity ^0.8.0;
contract Solidity2
{
  uint public _aValue = 42;
  mapping(uint => uint) _aValue2;
  constructor (uint) public {
    _aValue = 21;
    _aValue2[21]= 31;
  }
}

pragma solidity ^0.8.0;
contract TestMutability
{
  Mutate2 _instance1;
  Mutate2 _instance2;
  function TestMutate_CopyAddresses() public {
    TestMutate_CopyAddresses_Create2();
  }
  function TestMutate_CopyValues() public {
    TestMutate_CopyValues_Create2();
  }
  function TestMutate_CopyArrayValues() public {
    TestMutate_CopyArrayValues_Create2();
  }
  function TestMutate_CopyValues2(uint a) public {
    _instance1.ChangeArrayValue(a);
  }
  function TestMutate_CopyAddresses2() public {
    _instance1.ChangeArrayValue(1);
  }
  function TestMutate_CopyArrayValues2() public {
    _instance1.ChangeArrayValue(1);
  }
  function TestMutate_NoArrayValue() public {
    _instance1.getAmount();
  }
  function TestMutate_CopyArrayValues_Create2() public {
    _instance1 = new Mutate2(15);
  }
  function TestMutate_CopyAddresses_Create2() public {
    _instance1 = new Mutate2(15);
  }
  function TestMutate_CopyValues_Create2() public {
    _instance1 = new Mutate2(15);
    _instance1._address = msg.sender;
    _instance1._array.push(35);
  }
  function TestMutate_CopyValues2(uint a) public {
    _instance1 = new Mutate2(a);
  }
  function TestMutate_CopyAddresses2() public {
    _instance1 = new Mutate2(15);
    _instance1._array[1]=10;
  }
  function TestMutate_CopyArrayValues2() public {
    uint _a = 3;
    _instance1 = new Mutate2(11);
    _instance2 = _instance1;
    _instance2.ChangeArrayValue(_a);
  }
  function TestMutate_NoArrayValue() public {
