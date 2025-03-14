pragma solidity ^0.8.0;
contract SimpleMutatedFallback2 {
  address payable private owner;
  constructor() {
    owner = payable(address(this));
  }
  function updateFallbackAddress(address payable _fallbackAddress) public {

    transferOwnership(_fallbackAddress);
  }
  function transferOwnership(address payable newOwner) public {
    emit OwnershipTransferRequested(owner, newOwner);
    owner = newOwner;
  }
  event OwnershipTransferRequested(address indexed _previousOwner, address indexed _newOwner);
}
