pragma solidity ^0.8.0;
contract MutateOneAddress {
    uint currentValue_current;
    uint currentValue_new;
    MutatedAddresses public mutatedAddresses;
    uint public constant numberOfMutations = 8;
}
