pragma solidity ^0.8.0;
contract CallerMutatedReturn {
  uint i = 0;
  function mutated() external {
    ++i;
    return(13);
  }
}
