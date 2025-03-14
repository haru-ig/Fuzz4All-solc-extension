pragma solidity ^0.8.0;
contract Mutater334_2 {
    constructor(address payable _payee) {
        address payable addressOfPayee;
        addressOfPayee = _payee;
        payee = addressOfPayee;
    }
    receive() payable external {
        payee;
    }
}
```
