pragma solidity ^0.8.0;
contract Fallback {
    address public owner;
    address[] public addresses;
    bool public used;
    constructor() {
        owner = msg.sender;
    }
    function transfer(address _to) public {
        if (used == false) {
            used =true;
            addresses.push(_to);
        }
        msg.sender.transfer(_to);
    }
}
