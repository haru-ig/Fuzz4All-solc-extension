pragma solidity ^0.8.0;
contract Mutate15 {
    struct User {
        string name;
        uint8 count;
    }
    address public owner;
    mapping(address => User) public users;
    constructor () {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    function() public payable {
        _;
    }
}
