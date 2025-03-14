pragma solidity ^0.8.0;
contract Ownable {
    address payable owner;

    constructor() { owner = payable(msg.sender); }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function withdraw(uint val) public onlyOwner {
        owner.transfer(msg.value.sub(val));
    }
}
