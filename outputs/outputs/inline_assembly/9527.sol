pragma solidity ^0.8.0;
contract MyContract {
    bool public b;
    event ChangeToTrue(uint x);
    address public owner;
    constructor() {owner = msg.sender;}
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function foo() public onlyOwner {
        b = true;
        emit ChangeToTrue(2);
    }
}
