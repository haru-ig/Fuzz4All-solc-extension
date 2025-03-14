pragma solidity ^0.8.0;
contract FallbackReceiver {
  address fallback_;
  bytes32 public function Fallback() external payable {
    fallback_.transfer(address(this).balance);
  }
}
