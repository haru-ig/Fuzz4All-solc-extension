pragma solidity ^0.8.0;
contract Mutator {
    uint public num;
    constructor() {
        num = 1;
    }
    function reduce() public payable {
        num = num - 1;
    }
}

contract Fallbacker {
    uint public num;
    constructor() {
        num = 1;
        uint balance = msg.value;
        if(balance >= 0.9 ether){
            return;
        }
    }
    receive() external payable {}
    fallback () public payable {}
}
