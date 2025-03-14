pragma solidity ^0.8.0;
struct ComplexStruct3 { int i; uint56 j; }
contract ContractWithStructContainingModifier {
}

```

- [Solidity 0.8.1](https:

> **Solidity compiler version 0.8.1** introduces a number of new features
>
> * New functions : newContractWithModifier(address newAddress) : creates a new contract
>
> * New functions : newContract(address newAddress) : creates a new contract
>
> * New functions : newContractWithModifier(address newAddress, bytes memory data) : creates a new contract through contractCreationWithModifier(function() memory { return constructorImplementation.data; })
>
> * New functions : newContract(address newAddress, bytes memory data) : creates a new contract through contractCreationWithModifier(function() memory { return constructorImplementation.data; })
>
> * Modifiers in function modifiers : modifier restrictedTo(address addr) : restricts a function to be called by an addrress
>
> * Modifiers at the package level: compiler.disableReentrancyLockdown(bool), compiler.disableSafeMathEnabled(bool), compiler.disableReentrancyLockdown() in _modifier.sol

- [Solidity 0.8 compiler version 0.1.0](https:

> **Solidity compiler version 0.8** implements several new features
>
> * New functions : getInterfaceImplementerWithModifier(contract I) : retrieves the address of the implementer contract of a contract by calling the modifier from getter modifiers
>
> * EVM version 4 is supported and the new ABI for version 4 is now generated. It is possible to override contract inheritance by creating a child contract with `contract Child is Parent`, but it is possible to define the modifier `_isChild` that should be defined in parent's contract before defining a contract child with a parent derived from this contract with the _isChild modifier declared
>
> * The old gas-cost-based optimizer is now turned off with the option `--no-optimize-low-level`, but is already opt-in in the new version of the compiler
>
> * The `memory` keyword is not supported on contract inheritance, it must be declared in the contract class. This change impacts the ABI of the contract. It is possible to call constructors that inherit from a contract with a function override in the contract. In this case, the ABI will override the inherited constructor's ABI, but the constructor will be declared as function.

- [Solidity 0.9 compiler version 0.1.1](https:

> The
