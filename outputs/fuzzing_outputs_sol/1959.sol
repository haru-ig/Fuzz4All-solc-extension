pragma solidity ^0.8.0;
contract MutatedCaller is Caller {
    address payable wallet;

    constructor(address payable _wallet) {
        wallet = _wallet;
    }

    function setWallet(address payable _wallet) {
        wallet = _wallet;
    }

    function payTo(uint _amount) public payable {
        wallet.transfer(_amount);
    }
}
