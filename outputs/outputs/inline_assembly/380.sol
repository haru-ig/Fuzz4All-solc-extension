pragma solidity ^0.8.0;
contract M9 {
    address a;
    constructor() {
        a = msg.sender;
    }
    function divide() public {
        msg.sender.transfer(b/(2*b));
    }
    function modify() public {
        msg.sender.transfer(b+b*(b / 2));
    }
}
