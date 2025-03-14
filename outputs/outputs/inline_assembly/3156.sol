pragma solidity ^0.8.0;
contract C {
    struct BData {
        uint id;
        string name;
        uint number;
        bool boolVal;
        mapping (uint => address) users;
    }
    uint public balances;
}
