pragma solidity ^0.8.0;
contract Susceptible {
    constructor(address[] accounts) {
        for (uint i = 0; i < accounts.length; i++) {
            address account = accounts[i];
            require(account!= address(0));
            msg.sender!= account;
        }
    }
    modifier susceptible() {
        _;
    }
}
