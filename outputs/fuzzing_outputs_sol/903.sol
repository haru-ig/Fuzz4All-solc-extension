pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint public x;
    address public contractAddr;

    constructor (address _contractAddr) { contractAddr = _contractAddr; }
    function fallback() public {
        x = contractAddr.balance;
        uint16 a = contractAddr.send(2 ether);
        bytes memory c = contractAddr.call{value: 2 ether}("");
        contractAddr.call{value: 2 ether}("");
    }
