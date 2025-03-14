pragma solidity ^0.8.0;
contract Ownable {
    address public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor () {
        owner = msg.sender;
        emit OwnershipTransferred (address(0), msg.sender);
    }

    func changeOwner(address newOwner ) public onlyOwner {
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}
