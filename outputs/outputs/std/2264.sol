pragma solidity ^0.8.0;
contract MutatedQ4 is EquivalentQ3, EquivalentQ6 {
    constructor() {
        super.sub();
    }
}
