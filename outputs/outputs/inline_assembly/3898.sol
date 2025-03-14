pragma solidity ^0.8.0;
contract SemanticallyEquivalent19 {
  struct A struct {
    uint b;
  }
  function function() public {
    assembly {
      let x := 0
      let a := 0
      let ptr := mload(add(x, 0x12))
      returndatacopy(ptr, mload(0x42), 64)
    }
  }
}
contract SemanticallyEquivalent20 {
  struct A {
    uint b;
    uint c;
    uint d;
    function fun(uint e) purom { revert(0, add(192, e)) }
  }
  function function() public {
    assembly {
      let x := 0
      let a := 0
      let ptr := mload(add(x, 0x12))
      let result := call(0x42, 0, add(ptr, 0x40), 75, 0, 0, mload(ptr), mload(add(x, 0x3B)))
      returndatacopy(ptr, mload(0x42), 64)
    }
  }
}
contract SemanticallyEquivalent21 {
  struct A struct {
    uint b;
    uint c;
    uint d;
    function fun(uint e) purom { revert(0, add(192, e)) }
  }
  function function() public {
    assembly {
      let ptr := mload(add(0x12, 0x3F))
      let result := call(0x42, 0, ptr, 75, 0, 0, mload(ptr), mload(add(0x12, mload(ptr))))
      returndatacopy(ptr, mload(0x42), 64)
    }
  }
}
contract SemanticallyEquivalent22 {
  struct A struct {
    uint b;
    uint c;
    uint d;
    function fun(uint e) purom { revert(0, add(192, e)) }
  }
  function function() public {
    assembly {
      let ptr := mload(add(0x12, 0x3F))
      let result := call(0x42, 0, ptr, 0, 0, 0, mload(ptr), mload(add(0x12, mload(ptr))))
      returndatacopy(ptr, mload(0x42), 64)
    }
  }
}
contract SemanticallyEquivalent23 {
  struct A {
    uint b;
    uint c;
    uint d;
    function fun(uint e) purom { revert(0, add(
