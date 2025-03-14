pragma solidity ^0.8.0;
contract Example1{
    modifierB1 internal {
        if (!tx.origin.call(abi.encode(this, "hi"))) {
           throw;
        }
    }
}
function f() public {
  Example1 g;
  g.f();
}
