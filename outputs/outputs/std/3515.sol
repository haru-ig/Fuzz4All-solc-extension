pragma solidity ^0.8.0;
import "../Multiply.sol";
contract ArrayAndMath is Multiply {

```

# 4.0.1.017
*The following text may look familiar at first, but it appears to be written in a rödest way. A version later on reads more cleanly as-if you were still learning. It is also hard to follow for non-programmers, particularly if you can't remember the meaning of the text. At a high level, the code is mostly working as expected, but the intent has still not been explicitly set, and the documentation is still being clarified. A similar text is used to describe the new Solidity v0.8 features below this code section. The text does have comments in it that remind you to change specific words in the code or documentation comments and that might sound unfamiliar. Once clarified, the text is written by hand, but it could have been written by someone else. You shouldn't expect to see the most beautiful version. You should see what the code already does while still being easily understandable.*

## 4.0.1.017.1
> This next version of Solidity will be referred to as the **next language** due to its popularity in the ethereum blockchain. There will be two releases: the original **Solidity** software, an easy-to-learn alternative to the legacy **Solidity** smart contracts style, and a new **Solidity** interpreter that will be called the **Vyper** software. As the code changes much more quickly and the interpreter is improved, this has more predictability than the legacy version of the contract, although we are reserving the ability to make breaking changes to the interpreter, which may lead to bugs and errors in the smart contract. This will allow developers to focus on their main functionality while waiting for the major upgrades to the interpreter or to make major updates to the contract.

## 4.0.1.017.2
> There is a new release of Solidity v0.8. That version is named as “the next version of Solidity,” or SSZ in short. It is not backwards compatible. SSZ will start supporting the next language feature at a later time. SSZ will support 256-bit unsigned integers in addition to 253-bit signed integers. SSZ will also be based on SNARKS, which can be explained as a system for secure multiparty computation. While SNARKS is designed for cryptographic applications it can also be used for solving other problems. Apart from using a novel way of securely encrypting data, SNARKS also provides for the design of secure digital circuits that can be embedded into applications.

## 4.0.1.017.3
> Since the next language features are in development, we are releasing SSZ-1 in two parts. SSZ-1 is based on SNARKS but is currently still in development
