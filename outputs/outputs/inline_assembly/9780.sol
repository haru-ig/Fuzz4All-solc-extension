pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContract {
  uint internal contractCounter;
    constructor () {
    contractCounter = 0;
    }
    modifier test(uint p0) {
      contractCounter =  contractCounter + p0;
      return;
    }
    function a() public test(5) {
    }
    function b() public test(2) {
    }

  }
```

## What is Yul?
Yul is a programming language with a few specific features. These features make it different from Assembly Language that can be found in assembly languages.
- Yul provides two execution modes.
    - Inlining the code inside the braces allows for the optimization of gas usage.
<details class="md">
<summary><code>
<b>Mode 1: Inlining the code inside the braces</b>
</code></summary>
```
    function a() public {
      contractCounter = contractCounter + 5;
    }
```
</details>

- Yul supports variables and arithmetic.
    - Yul has two data types, 1. i32, and 2. i64.
- Yul also supports control flow such as if-then-elseif-else-etc.
- Yul also supports function and mapping types.
<details class="md">
<summary><code>
<b>Mode 2: Data Types</b>
</code></summary>
```
constant uint161_max = 0x7FFFFFFF;
mapping (`uint161` => `uint8`): uint161_max;
uint public memory1 = 0x7FFFFFFF;
address internal memory1 = 0x7FFFFFFF;
uint public memory3;
function() public {
    # @t: @t
    `uint168` p8 = 720000000000000000000;
    # @t: @t
    `uint168` p8 = 720000000000000000000; # @TODO
}
```
</details>

- Yul also supports the use of external function to access the blockchain, such as:
    - Block.timestamp
    - Block.number
    - Block.coinbase
    - Block.difficulty
    - Block.gasLimit
    - Block.gasUsed
    - Block.parentHash
    - Block.stateRoot
    - Block.transactions
- Yul also supports the use of `this`, but does not have the ability to access the gas, gasLimit and gasUsed properties.
