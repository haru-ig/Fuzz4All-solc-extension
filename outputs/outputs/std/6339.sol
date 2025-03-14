pragma solidity ^0.8.0;
contract Mutated {
    address constant owner = msg.sender;
    mapping (address => uint256) public userToValue;
    constructor () {
        userToValue[owner] = 42;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }
    function checkBalance(address userAddress) public view returns(uint256) {
        require(address(this).balance >= getBalance(userAddress), "insufficient funds");
        return userToValue[userAddress];
    }
    function getBalance(address userAddress) public view returns(uint256) {
        return userToValue[userAddress];
    }
    function setBalance(address account, uint256 value) onlyOwner public {
        userToValue[account] = value;
    }
}

pragma solidity ^0.8.0;
contract NewContract {
    address public owner;
    mapping (address => uint256) public userToValue;
    constructor () {
        owner = msg.sender;
        userToValue[owner] = 42;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }
    function checkBalance(address userAddress) public view returns(uint256) {
        require(address(this).balance >= getBalance(userAddress), "insufficient funds");
        return userToValue[userAddress];
    }
    function getBalance(address userAddress) public view returns(uint256) {
        return userToValue[userAddress];
    }
    function setBalance(address account, uint256 value) onlyOwner public {
        userToValue[account] = value;
    }
}
