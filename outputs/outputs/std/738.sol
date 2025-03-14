pragma solidity ^0.8.0;
interface MinterInterface {}

contract Minter {
  NonMutatedMinter public minter;
  constructor(address _minter_) {
    minter = NonMutatedMinter(_minter_);
  }

}
