pragma solidity ^0.8.0;
contract Mutater335 {
    address public payee;
    bool public success;
    constructor(address payable _payee) {
        payee = _payee;
    }
    receive() payable external {
        fail();
        success = true;
    }
    function succeed(uint _amount) public {
        payee.transfer(_amount);

        success = true;
    }
    function fail() public {
        uint _amount = 100;
        if (msg.value < _amount) revert("Not enough Ether");
    }
}


contract Mutater336 {
    address payable private contractInstance;
    constructor() public {
        contractInstance.transfer(address(this), 99999997);
    }
}
