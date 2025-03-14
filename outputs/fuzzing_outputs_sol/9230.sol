pragma solidity ^0.8.0;
contract MutatedContract {
  address payable public contractOwner;
  address payable public fallbackAdmin;
  constructor(
    address payable _fallbackAdmin
  ) {
    contractOwner = msg.sender;
    fallbackAdmin = _fallbackAdmin;
  }
  modifier onlyFallbackAdmin() {
    require(msg.sender == fallbackAdmin, "onlyFallbackAdmin");
    _;
  }
  function payEthers() payable internal returns (bool) {
    emit FallbackCalled(msg.sender);
    require(address(this).balance >= 0, "Ethers balance must be at least zero.");
    fallbackAdmin.transfer(address(this).balance);
    contractOwner.transfer(address(fallbackAdmin).balance);
    return true;
  }
}
