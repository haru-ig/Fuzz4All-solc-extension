pragma solidity ^0.8.0;
contract LowLevel {
    function sendEtherToLowLevel(address contractAddr) public payable {
        contractAddr.call{value : msg.value}("");
    }
}
