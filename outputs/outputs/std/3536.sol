pragma solidity ^0.8.0;
contract Incrementor {
    event TestEvent();
    constructor () { }
    function incrementAndReturn(uint256 value) public returns (uint256) {
        mappingOfNumbers[msg.sender] += value;
        emit TestEvent();
        return mappingOfNumbers[msg.sender];
    }
}
