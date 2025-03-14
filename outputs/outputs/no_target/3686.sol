pragma solidity ^0.8.0;
contract G {
   bytes32 x = "foo";
   function f() public pure {
      unchecked{x = sha256(x);}
      assert(x.equals(
        "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"));
   }
}
