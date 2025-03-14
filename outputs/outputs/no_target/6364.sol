pragma solidity ^0.8.0;
contract B {
  D d = new D();
   uint256 internal value = d.f(1);
}
