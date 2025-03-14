pragma solidity ^0.8.0;
contract Caller {
  bytes32 constant FAILURE_MSG = "Contract should have at least one fallback function";
  fallback() external {}

  receive() external payable {

    assembly {   }
  }

  fallback() external payable pure {
    assembly {   }
  }
}
