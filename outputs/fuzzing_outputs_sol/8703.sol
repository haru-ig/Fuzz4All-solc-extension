pragma solidity ^0.8.0;
contract MutatedCaller {
    function receive() external payable {}
    function sendPayable() public payable {}
    function callPayable() public callpayable {}
    function fallbackX() public payable {}
    function callX() public callpayable {}
}

pragma solidity ^0.8.0;
contract Overwriter {
    address public owner;
    uint public balance;
    constructor(uint _balance) public {
        owner = msg.sender;
        balance = _balance;
    }
    function write(uint _amount) public {
        balance -= _amount;
    }
    function() public returns (uint) {
        return balance;
    }
}
