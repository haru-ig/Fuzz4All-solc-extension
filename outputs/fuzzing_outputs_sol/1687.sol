pragma solidity ^0.8.0;
contract ChangedFallback is MutatedFallback {
  function receiveData() public pure returns (uint256 data){
    return 1;
  }
}
