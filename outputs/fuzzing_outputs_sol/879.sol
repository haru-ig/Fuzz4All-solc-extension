pragma solidity ^0.8.0;
contract ContractWithFallback {
  function fallback(address from, address to, uint amount) public pure {
    require(from == address(0));
    require(amount > 0);
    (bool success, ) = to.call{ value: amount }("");
    require(success);
  }
}
