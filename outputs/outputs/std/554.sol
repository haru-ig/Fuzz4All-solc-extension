pragma solidity ^0.8.0;
contract Mutated_Hello_World is HelloWorld {
    constructor() {
        setName(0, "Hello World");
        setName(1, "Hello");
        setName(2, "World");
        setName(3, "Good");
        addName("Solidity");
        addName("is");
        addName("a");
        addName("language");
    }
}
