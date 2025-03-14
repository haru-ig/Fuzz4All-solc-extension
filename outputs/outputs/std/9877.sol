pragma solidity ^0.8.0;
contract S9Mutated2 {
    uint8 a;
    address payable owner;
    constructor () public payable {
        owner = msg.sender;
        a = 99;
    }
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    function incremen() public onlyOwner {
        a--;
    }
}
