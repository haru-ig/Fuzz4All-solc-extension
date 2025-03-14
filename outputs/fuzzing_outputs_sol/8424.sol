pragma solidity ^0.8.0;
contract CallerExample {
  address contractToCall;
  constructor(address _contractToCall) public {
    contractToCall = _contractToCall;
  }
  receive() external payable {
    assembly {
      mstore(add(mload(0x40), 48), 334)
      mstore(add(mload(0x40), 124), 334)

    }
  }
}
