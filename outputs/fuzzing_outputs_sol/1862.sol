pragma solidity ^0.8.0;
contract MutatedFallbackSender {
    uint constant _value = 4;
    uint public balance = 0;
    MutatedFallbackRecipient public fallbackRecipient;
    function setFallbackRecipient() public {
        fallbackRecipient = new MutatedFallbackRecipient();
    }
    receive() external {
        balance = balance + _value;
    }
    fallback() external payable {
        balance = balance + _value;
        fallbackRecipient.setBalance(balance);
    }
    function setBalance(uint x) public returns(bool) {
        fallbackRecipient.setBalance(x);
        balance = x;
        return true;
    }
}
contract SimpleContract {
    uint constant _value = 23;
    uint constant _gasPrice = 500;
    address public receiver = msg.sender;
    address public sender;
    constructor() {
        sender = msg.sender;
    }
    function () external {}
    receive() external payable {
        receiver.transfer(0);
        sender.transfer(0);
    }
    fallback() external payable {
        require(msg.value == _value);
        sender.transfer(0);
    }
    function setBalance(uint gasPrice) public {
        sender.transfer(gasPrice);
    }
    function withdraw(uint value) public {
        sender.transfer(value);
        receiver.transfer(value);
    }
}

pragma solidity ^0.8.0;
contract Fallback {
    uint constant _value = 23;
    uint public value = 0;
    function Fallback() {
    }
    function() {
        msg.sender.transfer(_value);
        value = 0;
    }
}
library SafeMath {
    function add(uint a, uint b) internal pure returns (uint) {
        uint c = a + b;
        require(a == 0 || c >= a);
        return c;
    }
    function sub(uint a, uint b) internal pure returns (uint) {
        require(b <= a);
        uint c = a - b;
        return c;
    }
    function mul(uint a, uint b) internal pure returns (uint) {
        if (a == 0) {
            return 0;
        }
        uint c = a * b;
        require(c / a == b);
        return c;
    }

    function div(uint a, uint b) internal pure returns (uint) {
        uint c = a / b;
        return c;
    }
}

/*********************************
* GAS PRICE
* Gas price set to 500 Wei
* Gas required to initialize contract is 50000 + 24000
* Gas required is 140000
* Gas used 90000
* Gas consumed
