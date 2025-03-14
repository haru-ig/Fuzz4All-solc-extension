pragma solidity ^0.8.0;
contract SemanticallyEquivalent26 {
  function foo(uint8 x, uint8 y) public pure {
    assembly {
      let p := mload(0x40)
      mstore(0x40, isZero(0))
      let q := mload(add(p, 0x20))
      mstore(0x20, isZero(0))
      mstore(0x40, or(isZero(q), isZero(not(x))))
    }
  }
}

pragma solidity ^0.8.0;
contract SolidityErrorHandling {

  function foo() public pure {
    assembly {
      let t := x
        div(0, 0)
        div(x, 2)
        div(100, 0)
        div(x, 27)
        div(100, 0x7FFFFFFFFFFF7FFFFFFF)
      mstore(1, t)
    }
  }
}
