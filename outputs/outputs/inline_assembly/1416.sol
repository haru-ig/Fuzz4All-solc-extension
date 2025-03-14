pragma solidity ^0.8.0;
contract Mutant9tSemantic {
  bytes32 public a;
  uint32 public value;
  function f() private returns (uint256) {
    return 3;
  }

  function g() public view returns (uint32) {
    value = a.length;
    a[0] = "A";
    return 3;
  }

}
