pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract EquivalentProgram {
  bytes32 constant X = '100';
  bytes32 x;
  bool executed;
  event executedEvent();
    constructor() public {
    x = X;
   emit executedEvent();
  }
  bool public isExecuted;
  function execute() public onlyIfExecuted {
    executed = true;
   executedEvent();
  }
   bytes32 public y;


}

```
## What do you think would make it better?

## 6. Bonus
Make sure that you have an understanding of Yul as described on the internet, also make sure that the compiler was correctly recognized and used properly.
Have a look at this https:
<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=2 orderedList=false} -->

## 7. Reference
[Truffle by OpenZeppelin](https:
[Solidity by OpenZeppelin](https:
