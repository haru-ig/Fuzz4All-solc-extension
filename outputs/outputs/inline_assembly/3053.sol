pragma solidity ^0.8.0;
contract C {
  uint public a;
  uint public b;
  uint public c;
  function M() public {
    assembly {

      mstore(0, a)

      mstore(0, add(a, a))
      b := mload(0)
      c := add(b, b)

      mstore(0, add(add(add(a, a), b), c))
      c := mload(0)
      assert(c == 10)
    }
  }
}
