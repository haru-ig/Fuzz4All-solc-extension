pragma solidity ^0.8.0;
contract Ownable {
    address public owner;
    address public newOwner;

    constructor() {
    	owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "OnlyOwner: caller is not the owner");
        _;
    }

    modifier onlyNewOwner() {
        require(msg.sender == newOwner, "OnlyNewOwner: caller is not a new owner");
        _;
    }

    function transferOwnership(address newOwner_) public onlyNewOwner {
    	require(newOwner_!= address(0),"0");
        newOwner = newOwner_;
    }
    function kickOwner(address newOwner_) public onlyOwner {
        require(newOwner_!= address(0),"0");
        newOwner = newOwner_;
        emit OwnerKicked(newOwner_);
    }
    event OwnerKicked(address newOwner_ );
}
