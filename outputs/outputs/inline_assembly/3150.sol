pragma solidity ^0.8.0;
contract C {
    struct BData {
        uint id;
        uint number;
        bool boolVal;
        name users;
    }
    mapping(uint => BData) public balances;
}
