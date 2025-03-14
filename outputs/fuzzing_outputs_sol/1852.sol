pragma solidity ^0.8.0;
contract MutatedFallbackSender {
    uint constant _value = 2;
    uint public balance;
    uint public constant _maxGas = 50000;
    uint public constant _gasPrice = 500;
    constructor(string memory _name, string memory _symbol) {
        balance = 0;
    }
    fallback();
    receive() external payable {
        require(balance > 0);
        require(msg.value == _value);
        balance = balance - 1;
    }
    function fallback() public {
        uint gas = msg.gas;
        uint amountToPay = msg.value;
        uint maxGas = gas * (2 / 2) + gas;
        uint amountOfGasToPay = maxGas * gasPrice + gas;
        uint gasToPay;
        if (balanceOfGas > amountOfGasToPay) {
            gasToPay = amountOfGasToPay;
        } else {

            gasToPay = balance - amountOfGasToPay;
        }
        require(amountToPay <= gasToPay);
        balance = balance + amountToPay;
    }
    function setGasPrice(uint _gasPrice) public {
        require(_gasPrice >= 500 ether);
        gasPrice = _gasPrice;
    }
    uint balanceOfGas;
    uint gasPrice;
}
