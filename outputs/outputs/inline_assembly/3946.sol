pragma solidity ^0.8.0;
contract SemanticallyEquivalent26 {
  function foo(uint8 x, uint8 y) public pure {
    assembly { revert("bar", mod(x, and(y, 11))) }
  }
}
contract SemanticallyEquivalent27 {
  function foo() public pure {
    assembly { revert("bar", xor(evm.pop(), 11)) }
  }
}
contract SemanticallyEquivalent28 {
  function foo(uint32[] calldata) public pure {
    assembly { revert("bar", mload(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldata(0))))))))))))))) }
  }
}
contract SemanticallyEquivalent29 {
  function foo() public pure {
    assembly { revert("bar", add(evm.msgdata, xor(evm.calldatacentre(), 11))) }
  }
}
contract SemanticallyEquivalent30 {
  function foo(bytes32[] calldata) public pure {
    assembly { revert("bar", mload(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldatasize(calldata(0))))))))))))))) }
  }
}
contract SemanticallyEquivalent31 {
  function foo() public pure {
    assembly { revert("bar", add(evm.msgdata, xor(evm.calldatacentre(), 11))) }
  }
}
