pragma solidity ^0.8.0;
library MyLibrary {
  uint constant SOME_CONST = 8;
  uint constant SOME_CONST2 = 8;
  uint constant SOME_CONST3 = 8;
  function getSomeConst() public pure returns(uint, uint, uint){
    return (SOME_CONST, SOME_CONST2, SOME_CONST3);
  }
}
contract MyContract {
  uint public value;
  function setNewValue(uint somethingValue) public {
    value = somethingValue;
  }
  function retrieveNewValue() public view returns(uint, uint, uint) {
    return (value, value, value);
  }
}
```
# EIP 2040
This specification provides three key advantages which should be noted when it comes to developing a smart contract which will be called by truffle’s generate command.
1) EIP 2040’s mechanism of allowing “payable functions” will allow for us to design a contract which will also be called by Truffle.
2) EIP 2040 requires the contract to know what it will be called. Otherwise it creates complexity in managing code execution.
3) EIP 2040 also describes an important aspect of Solidity programming: “state”. A contract’s state variables can be manipulated by a contract owner and this allows for secure code.

EIP 2040 is a specification and not an EVM implementation, so you _**cannot** start a simple contract with a call to this constructor function. Your contract must include a `constructor() public {}` and follow these rules:
- The constructor must not require arguments.
- The constructor must be the first method in the contract if it defines a public function.

EIP 2040’s rule for creating contracts is as follows:
- The public contract is called a contract if it is also the `contract EIP20Interface` or if it’s been “extended” with `external`.
- Each contract inherits its initial balance from the value currently on the blockchain. A specific account can set their own balance.
- A contract cannot own a different address if it is an inherited contract.
- An inherited contract cannot be inherited. So you can
