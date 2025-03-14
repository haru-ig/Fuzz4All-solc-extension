pragma solidity ^0.8.0;
contract SimpleMutatedFallback {
  address payable private owner;
  constructor () {
    owner = payable(address(this));
  }
  function updateFallbackAddress (bytes32 _identifier, address payable _fallbackAddress) public {
    owner = _fallbackAddress;
  }
}
