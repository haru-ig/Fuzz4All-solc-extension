pragma solidity ^0.8.0;
struct StructWithFallback14 {
  function modified() public pure {
    (bool x, bytes memory y) = a;
    foo().sendValue(x, y);
  }
}
contract ContractWithFallback15 {
  function modify(address foo, uint x) public payable {}
}
