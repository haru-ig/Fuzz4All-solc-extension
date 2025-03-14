pragma solidity ^0.8.0;
contract ContractWithFallback4 {
  uint public contractVar;
  uint256 public fallbackVar;
  function create() public pure {
    bytes memory emptyBytes = "";
    fallbackVar = (new ContractWithFallback3()).fallback();
  }
  function () external storage {
    fallbackVar = fallback();
  }
  function fallback() public pure returns (uint) {
    contractVar = 300;
    return contractVar;
  }
}
