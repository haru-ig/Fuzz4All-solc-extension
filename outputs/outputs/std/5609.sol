pragma solidity ^0.8.0;
contract Mutate253{
    address public owner;
    mapping(address => bool) public admins;

    constructor(){
        owner=msg.sender;
        admins[owner]=true;
    }

    modifier onlyOwner(){
        require(isAdmin());
        _;
    }

    function setAdmin(address account) public onlyOwner{
        admins[account]=true;
    }

    function isAdmin() public view returns(bool){
        return admins[msg.sender];
    }

    event AdminUpdated(address oldAddress, address newAddress);
}
