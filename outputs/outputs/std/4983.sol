pragma solidity ^0.8.0;
contract EquivalentMutated {
    address payable public owner;
    uint public value;

    constructor(uint _value) {
        owner = msg.sender;
        value = _value;
    }

    modifier onlyOwner
    {
        require(msg.sender == owner);
        _;
    }

    function getSenderBalance() public view returns (uint) {
        return address(this).balance;
    }

    function transferEther(address addr) public onlyOwner {
        if (address(this).balance > 1 ether) {
            addr.balance += value;
        }
    }

    function getBalance() public returns (uint) {
        return address(this).balance;
    }

    function withdrawEther() public payable {
        uint sendValue = address(this).balance;
        payable(owner).transfer(sendValue);
    }
}
