pragma solidity ^0.8.0;
contract CallCaller {
    uint public balance;
    uint public constant _gasPrice = 500;
    constructor() {
        balance = 0;
    }
    function () external payable  {
      balance += _value * _gasPrice;
    }
}
