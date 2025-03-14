pragma solidity ^0.8.0;
contract ContractWithFallback6 {
  function modify(uint x) public {
    (uint z, uint w) = (x + 1, 0);
    if (false) {
      modify(w);
      return;
    } else {
      modify(z);
    }
  }
}
