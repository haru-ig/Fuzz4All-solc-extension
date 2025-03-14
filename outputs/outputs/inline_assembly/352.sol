pragma solidity ^0.8.0;
contract F7{
    uint a;
    address payable owner;
    constructor() {
        owner = payable(msg.sender);
    }
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    function modify(uint x, uint y) public onlyOwner {
        a = a + x*(x-2);
    }
    function divide(uint x, uint y) public onlyOwner {
        a = a/x*(x + (x - 1));
    }
}
