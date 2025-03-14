pragma solidity ^0.8.0;
contract Mutated {
  function fallback (uint amount) external {
    uint (address(this).balance);
  }
}
