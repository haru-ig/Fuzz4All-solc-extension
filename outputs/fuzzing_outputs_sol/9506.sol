pragma solidity ^0.8.0;
contract ContractWithFallback16 {
  Receive receivefunc;
  bytes32 public constant receivefuncid = keccak256("receivefuncid");
  receive() external payable {
    receivefunc.data[0];
  }
}
