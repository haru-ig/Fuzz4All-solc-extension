pragma solidity ^0.8.0;
contract C {
    struct BData {
        uint id;
        string name;
        uint number;
        bool boolVal;
        mapping (uint => uint8[4]) users;
    }
    BData public balances;
}
