pragma solidity ^0.8.0;
contract Incrementor {
    mapping (address => uint256) internal mappingOfNumbers;
    constructor () { }
    function incrementAndReturn(uint256 value) public returns (uint256) {
        mappingOfNumbers[msg.sender] += value;
        return mappingOfNumbers[msg.sender];
    }
}
