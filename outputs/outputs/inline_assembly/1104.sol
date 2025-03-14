pragma solidity ^0.8.0;
contract MutatedContract2 {
  uint x;
  constructor () {
    x += _calculate_();
  }
  function _calculate_() internal view returns (uint) {
    x += 1;
    return 1;
  }
}
```
```sh
$ npx hardhat run --network "localhost" --gas=0 ether.sol
```

- `require`: Asserts that a condition holds [19] because the user is the owner of the contract, otherwise throws. This is equivalent to calling “require(x == 1)”. It can be used to precompile a specific condition and not have to execute it on every call.
- `assert`: Asserts that a condition holds [20] and will immediately throw. When used immediately at an assert point in the source of your smart contract, it allows you to add extra verification logic without having to write the same code over and over in different smart contracts. It is often used to test functions before you can include in the solidity compiler test suite, which allows you to assert on the output of any function. [21] [22] [23]
- In an assembly contract, every instruction must be aligned or properly padded to the size of an integer. In order to get access to memory and the compiler can properly align it, then a byte must be inserted at the end of the statement, to create a one-byte padding. There are 64 bits in an Integer and each byte takes up 2 bytes.
- Inline assembly performs a number of specialization techniques to provide a more efficient, readable and efficient way to code, but requires that you have good knowledge of Yul language.
- The first thing you should do is to find the contract’s size, since inline assembly is a compile-time thing, the size of the contract’s source code will vary.
- It is good practice to avoid using inline assembly in complex situations. The compiler and smart contract designers don’t work full time.
- An inline assembly statement is a sequence of Yul instructions. Yul uses 64-bit integers, so only one integer is created, but then 2*64 bytes are used to store the result. The extra bytes are always added so that everything can be aligned.
- Inline assembly code cannot have more than two nested instructions on the same line [24], and this can cause problems if a contract has more then 5000 functions [3].
- An inline assembly statement often uses memory operations and returns an integer. As a general rule, this will produce correct code on all platforms, but some compilers or interpreters have trouble in optimizing these operations.
- When multiple bytes are used in an assembly, the resulting binary is often inefficient and does not look exactly right.
- Sometimes, some compilers produce incorrect
