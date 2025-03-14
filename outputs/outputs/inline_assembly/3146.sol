pragma solidity ^0.8.0;
contract C {
    struct BData {
        uint id;
        string name;
        mapping (uint => address) users;
    }
    address public creator;
    mapping(address => BData) balances;
}
`
