pragma solidity ^0.8.0;
contract MutantFallback {

    function normalCall() public pure returns (uint) {
        return 1;
    }

    function externalCall() external pure returns (uint) {
        return 2;
    }

    function internalCall() internal pure returns (uint) {
        return 3;
    }
}

contract Whitelist {


    constructor(address whitelister) {
    }

    event Mute(address minter, bytes message);

    function whitelist(address newMinter) external {
        require(newMinter!= address(0));
        require(msg.value == 0);
        emit Mute(msg.sender, "whitelisted");
    }

    function withdraw(uint amount) external {
        require(msg.value >= amount);
        uint balance = address(this).balance;
        require(balance == amount);
        balances[msg.sender] = 0;
        msg.sender.transfer(msg.value);
    }
}
