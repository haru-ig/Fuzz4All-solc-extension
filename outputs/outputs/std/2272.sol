pragma solidity ^0.8.0;

import "./Memory.sol";


contract Memory is MemoryBase{

    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function.");
        _;
    }



    constructor () {
        owner = msg.sender;
    }


    require(msg.sender == owner, "Only the contract owner can call this function.");



    function setOwner(address _newOwner) public {
        address _owner = owner;
        owner = _newOwner;
        emit SetOwner(_owner);
    }


    function getOwner() public view returns (address) {
        return owner;
    }
}
