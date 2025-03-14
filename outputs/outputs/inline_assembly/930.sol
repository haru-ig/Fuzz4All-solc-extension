pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() internal pure returns(uint) {

        _increment = _increment + 1;
        return _increment;
    }
    function increment() public pure returns(uint) {

        Incrementer.increment_internal();

        Incrementer.increment();
        return _increment;
    }
    uint private constant _increment = 1;
}


```


## Conclusion

Inline Assembly was introduced within the Smart Contract Programming style and is used a lot in almost all modern smart contract applications.

Inline Assembly differs from other languages in the fundamental way of the language. In contrast, Solidity takes advantage of the existing abstraction of Solidity itself, making Solidity code easier to understand and reason with. Within Solidity, all logic is contained within the contract, and the code itself is compiled to optimized machine code.

In other words, these two different ways for a contract to code their specific logic is extremely similar. These two modes allow the usage of Solidity with minimal efforts on the part of the developer; the code will be compiled directly to efficient machine code with no need of writing gas and or using Yul to define and run the contract.

As an added bonus, inline assembly can be used by any program using Solidity, meaning that it works with Solidity code without requiring a specific version. It also means that inline assembly is not restricted to contracts that rely on Solidity.

These use cases, and the inline assembly feature they allow for, give developers the complete control they need to write their programs.

## See also

- [Compiling Programs with Inline Assembly](https:
- [How to Use Inline Assembly](https:
- [Inline Assembly (Solidity Wiki)](https:
