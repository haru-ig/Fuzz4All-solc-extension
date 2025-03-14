pragma solidity ^0.8.0;
 contract FallbackCaller {
    uint constant private _contractInitialBalance = 100;
    uint8 constant private _value = 200;
    uint public balance;
    uint public constant _gasPrice = 500;
    modifier onlyNonZero(uint _amount) {
        require(_amount >= 0, "Invalid amount");
        _;
    }
    constructor() {
        balance = _contractInitialBalance;
    }
    function fallback() payable    public onlyNonZero( msg.value ) {
        balance += _value * _gasPrice;
    }
    receive() external payable {}
}
