pragma solidity ^0.8.0;
contract SemanticTest_v4b {
        uint i = 5;
    struct Person {
        uint id;
        string name;
        uint[] info;
    }
    Person contractPerson = Person(1, 'Maggie', [0, 5, 0]);
    constructor() public {}
}
