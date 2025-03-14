pragma solidity ^0.8.0;
contract SemanticallyEquivalent20x {
  uint8 constant x = 42;
  function foo() public pure {
    x := mload(x);
    x := x;
  }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent20x{
  uint8 constant x = 42;
  function foo() public pure {
    assembly
      let mloadX := mload(x)
      let mstoreX := mstore8(x, mloadX)
  }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent20x{
  uint8 constant x;
  function bar(uint8 _x) public pure {
    x:= _x;
  }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent20x {
  uint8 constant x;
  function bar(uint8 _x) public pure {
    assembly {
      let mloadX := mload(x)
      let mstoreX := mstore8(x, mloadX)
    }
  }
}
pragma solidity ^0.8.0;
contract SemanticallyEquivalent20x {
  uint8 constant x;
  uint y;

  modifier nonConstant() {
    x.value(100);
    require(x == 42);
    x.value(1);
    _;
  }

  function greet() public nonConstant {
    uint z = 0;
    assembly {

      mstore(0x0, mload(y))
      mstore(0x0, mload(y).add(1))

      let mloadZ := mload(z)
      mstore(z, mload(z).add(mload(y)))


    }
  }
}



pragma solidity >=0.8.0;

contract C
