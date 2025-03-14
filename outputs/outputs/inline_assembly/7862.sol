pragma solidity ^0.8.0;
contract L24New {
    constructor() public payable {
        var data = assembly {
            let x := 5
            let y := 12

            x := y + 5
         mstore(42)
         mstore(0x47)
        }
    }
    function modifyCalled() public {}
}

```

## Yul

A language to describe and describe complex behaviors by taking the form of human language and then representing complex code using the same rules that go into programming programs. Yul is a statically typed, statically checked, and portable compiler of the source code and is written in EVM assembly. Yul is like the C programming language, but with a more natural, human-like view of how code is written. Yul is designed to make implementing programs easier for developers and avoids some of the drawbacks of C. Yul includes instructions to compute integers in a high quality manner, as well as instructions to perform the arithmetic operations for you. The Yul compiler is typically a part of a smart contract.


There is, as of today, no formal specification for Yul or the equivalent language in Solidity. There are some initial implementations at [Yul.Solidity.org](https:

## Other Resources

* [Solidity](https:
* [Yul, Yul.Solidity.org](https:
