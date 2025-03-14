pragma solidity ^0.8.0;
contract Mutant9t1
{
  bytes32 a;
  uint32 public value;
  function f() public view returns (uint32) {
    value = a.length;
    a = "Some data";
    return value;
  }
  function g() public view returns (uint32) {
    return 0;
  }
}

pragma solidity ^0.8.0;
contract Mutant9t2
{
  bytes32 a;
  uint32 value;
  function f() public view returns (uint32) {
    value = a.length;
    a = "Some data";
    return value;
  }
  function g() public view returns (uint32) {
    value = a.length;
    a = "Not too much data";
    return value;
  }
}


pragma solidity ^0.8.0;
contract Mutant9t3
{

  function f() public {
    bytes32 a = bytes32(42);
    assembly {

      a := add(a,0x1)
      return
    }
  }
}
