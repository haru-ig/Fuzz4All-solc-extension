pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint   public balance = 0;
    event ContractCreated(address _address);
    event BalanceChanged(address _address, uint _amount);
    constructor() { contractAddress = address(this); }
    function (uint _amount) public pure {
        balance += _amount;
        emit BalanceChanged(contractAddress, _amount);
    }
}

```

## Resources
* [Yul Documentation](https:
* [Yul Documentation - Inline assembly](https:
* [Yul Tutorial - Inline assembly](https:
* [Yul Tutorial - Compiler](https:
