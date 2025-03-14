pragma solidity ^0.8.0;
contract MyContract {
    address private contractAddress;
    uint private balance;
    event ContractCreated(address _address);
    event BalanceChanged (address _address, uint _amount);
    constructor() { contractAddress = address(this); }
    modifier onlyContract() {
        require(msg.sender == contractAddress);
        _;
    }
    function makeSureContractCreated() internal {
        emit ContractCreated(contractAddress);
    }
    function increase(uint _amount) public onlyContract {
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}

```

## Part 9: Testing

Part 9 tests the code, and if there are errors, it will send you error messages in the transaction.

![errors](https:


## Part 10: Exercises

- Make a contract that has an increase method that accepts a number as the parameters, and increases the contract's balance to the new value.

- Create a contract that receives a number as a single parameter, and subtracts it from the contract's balance.

- Create a contract that represents a number as two separate parameters, where one is for a remainder and the other is a quotient. This contract must then display the quotient (without a decimal) and the remainder.

- Implement an `address` method that accepts the parameter a single `bytes32` (string). This method then determines the hash of the data passed as the parameter. Display this hash as a hex string.

- Define and use a Solidity function-like variable (`.x`) and a Solidity if-then-else statement (`.x?.y`). Then define and use a Solidity `library` with different parameter types. Note that solidity doesn't automatically know about the type of each parameter in a function, so you must make sure to give the right types.

- Create three different contract instances of a single contract. Make sure to choose different numbers as the parameters to different method calls.


## Additional Information
