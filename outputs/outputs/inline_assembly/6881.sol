pragma solidity ^0.8.0;
contract MutatedContactsExample181 {
    address public owner;
    mapping (address => bool) public mutatedAddress;
    constructor()owner{
    }
    function set_mutated(address a, bool state){
        mutatedAddress[a] = state;
    }
    modifier onlyOwner(){
        require(msg.sender == owner, "owner");
        _;
    }
    function getMutated(address a){
        return mutatedAddress[a];
    }
    function getAddress(address a){
        address _a = a;
        return _a;
    }
    function getAddress_asMutated(address a){
        return a;
    }
    function getAddress_asNotMutated(address a){
        return mutatedAddress_[a]? mutatedAddress_[a] : a;
    }
}
