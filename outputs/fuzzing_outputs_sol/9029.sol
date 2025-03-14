pragma solidity ^0.8.0;
contract Fallback {
    address payable addr;
    address payable _fallback;

    constructor() {
        addr = payable(msg.sender);
        _fallback = addr;
    }

    function send(address payable recipient, uint amount) public returns(uint) {
        uint result = addr.send(amount);
        uint balance = msg.value;
        while (balance > 0) {
            balance -= addr.send(balance);
            result += balance;
        }
        return result;
    }

    receive() external payable {
        msg.sender.send(msg.value);
    }

    fallback() public payable {
        revert();
    }
}
