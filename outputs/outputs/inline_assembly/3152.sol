pragma solidity ^0.8.0;
contract C {
    struct BData {
        uint id;
        string name;
        uint number;
        bool boolVal;
        mapping (uint => address) users;
    }
    BData[] public users;

    constructor() public {
        balances[0].id = 0xFFFFFFFFD45B0DC628F78878D49E253FE7ED4BD2;
        balances[0].name = "Alice";
        balances[0].number = 2;
        balances[0].boolVal = true;
        balances[0].users[1] = accounts[0];
        users[0] = balances[0];
    }





}
```
