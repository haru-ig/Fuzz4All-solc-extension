pragma solidity ^0.8.0;
contract SemanticIndependenceAndDynamicArray3 {
    uint private constant INITIAL_BALANCE = 100 ether;
    address payable owner;
    uint private constant MAX_SUPPLY = 5000 ether;
    address[] private accounts;
    bool public initialized = false;



    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    constructor(){
        initialized = true;
        owner = payable(msg.sender);
        owner.transfer(INITIAL_BALANCE);
    }

    function () public payable {
        require(initialized);
        accounts.push(payable(msg.sender));
    }

    function getValue(uint i) public view returns (uint) {
        require(initialized);
        require(i < accounts.length);
        return accountToValue[accounts[i]];
    }

    function sum() public view returns (uint) {
        require(initialized);
        uint sum = 0;
        for(uint i = 0; i < accounts.length; i++)
        {
            sum += getValue(i);
        }

        return sum;
    }

    function setBalance(uint i, uint value) public onlyOwner {
        require(initialized);
        accountToValue[accounts[i]] = value;
    }

    function updateBalance(uint i, uint value) public onlyOwner {
        require(initialized);
        accountToValue[accounts[i]] = value;
    }
}
