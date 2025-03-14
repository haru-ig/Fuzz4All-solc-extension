pragma solidity ^0.8.0;
contract RevertMutatorExample {
  uint x;
  constructor() public {
    x = 1;
  }
  receive() external payable {
    assembly {
      let myMistake := 0x4f80a000000000000000000000000000000000000000000000000000000000000
      revert(add(myMistake, 0x0))
    }
  }
}
