pragma solidity ^0.8.0;
contract ContractMutator {
    uint storedData;
    function increment() public view {
        storedData++;
    }
}
