pragma solidity ^0.8.0;
contract third7 {
    function f() public pure virtual returns(uint) {
        return a;
    }
}

```
# Notes

There are currently at least two main types of errors:
1) A contract-specific error which is preventing the execution of any contract by another contract.
2) An internal error caused by a contract's internals.

# TODO & Wishlist

- [X] Add 5 other new error codes
  - [X] NotImplemented
  - [X] InvalidAddress
  - [X] Revert
  - [X] StorageOverFlow
  - [X] OutOfGas
  - [X] InvalidReturn
- [X] Add 5 more error codes
  - [ ] AccessViolation
  - [ ] DynamicCallFailed
  - [ ] TransactionReverted
  - [ ] InvalidChainId
  - [ ] EvmCheckFailure
