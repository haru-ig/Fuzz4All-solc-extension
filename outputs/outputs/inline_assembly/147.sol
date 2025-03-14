pragma solidity ^0.8.0;
contract E5G {
  function mul() public pure{
    assembly {
      sstore(0, mul(0, 10))
    }
  }
}
