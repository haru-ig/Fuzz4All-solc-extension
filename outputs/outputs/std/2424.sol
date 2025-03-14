pragma solidity ^0.8.0;
contract MutatedEquivalent {}
contract Incompatible {}
contract Mixed {
    contract A { function f() external payable {} }
    contract B { function g() external payable {} }
    address addr;
    constructor() {
        addr = deployContracts(A.balance, B.balance).address;
    }
    function randomAddress() external {
        addr = getRandomAddress();
    }
}
