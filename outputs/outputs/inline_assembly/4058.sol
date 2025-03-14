pragma solidity ^0.8.0;
contract SemanticsEquivalence25xCrossEquivalence {
    uint constant y1 = 1;
    uint constant y2 = 2;
    function bar() public pure {
        assembly {
          let x2 := add(x1, x2)
          let a := mload(x2)
          let r := add(x1, a)
          mstore(add(y2, 1), mload(x1))
          mstore(add(x1, 1), r)
        }
    }
}
