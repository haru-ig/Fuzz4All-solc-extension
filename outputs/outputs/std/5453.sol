pragma solidity ^0.8.0;
contract Mutate12 {
    bytes32 public randomBytes;
    string private _giver;
    uint public value;
    constructor() {
        uint random = randomValue();
    }
}
