pragma solidity ^0.8.0;
contract MyContract {
  constructor() {
    assembly {
      let _slot := extcodehash((add(address(this), 0), 66))
      sstore(0, _slot)
    }
  }
  receive() external payable {}
}
