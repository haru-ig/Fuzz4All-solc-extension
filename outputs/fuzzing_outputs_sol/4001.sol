pragma solidity ^0.8.0;
contract Example24 {
  function fallback() public {
    assembly {
      mstore(0, 0)

    }
  }
}
