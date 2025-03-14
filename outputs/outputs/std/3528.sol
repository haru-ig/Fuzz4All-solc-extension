pragma solidity ^0.8.0;
contract Incrementor {
    mapping (address => uint256) internal mappingOfNumbers;
    constructor () { }
    function increment(uint256 value) public {
        mappingOfNumbers[msg.sender] += value;
    }
    function getNumber(address addr) public view returns (uint256) {


        return(mappingOfNumbers[addr]);
    }
}
