pragma solidity ^0.8.0;
contract MutatingMutator
{
    uint public i;
    function seti(uint x) public onlyOwner {
        i = x;
    }
}
contract Moderated {
    uint public level = 0;
    mapping(address => bytes) public contracts;
    address payable creator;
    modifier onlyModerators {
        require(msg.sender == creator);
        _;
    }
    constructor() {
        creator = msg.sender;
    }
    function addContract(address contractAdress) public payable {
        if (contracts[contractAdress] == 0) {
            contracts[contractAdress] = msg.data;
            level += 1;
        }
    }
    function modifyContract(address contractAdress) public onlyModerators {

        if (contracts[contractAdress] == 0) {
            contracts[contractAdress] = msg.data;
            level += 1;
        }
    }
    function setLevel(uint _level) public onlyOwner payable {
        level = _level;
    }
    function getLevel() public view returns(uint) {
        return level;
    }
}
