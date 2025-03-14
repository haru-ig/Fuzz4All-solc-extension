pragma solidity ^0.8.0;
contract SemanticallyEquivalentTo {

    uint constant _value = 2;

    uint public _balance;

    uint _gasPrice;

    constructor() {
        _balance = 0;
        _gasPrice = 500;
    }

    receive() external payable {}

    fallback() external payable {
        _balance += 1000;
        require(msg.value == _value);
    }

    function setGasPrice(uint aGasPrice) external {
        _gasPrice = aGasPrice;
    }
}
