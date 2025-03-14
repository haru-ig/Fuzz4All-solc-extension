pragma solidity ^0.8.0;
contract DifferSamenessOf {
    uint constant _value = 3;
    address payable private _address;
    uint _balance = 345;
    uint private _gasPrice;
    constructor() {
        _balance = 789;
        _gasPrice = 546;
    }
    receive() external payable {}

    function fallback() external payable {
        _gasPrice = 0;
        _address.transfer(msg.value);
    }
    receive() external payable {
        _gasPrice = 0;
    }


    DifferSamenessOf public _caller;
    function setCaller(DifferSamenessOf calldata caller) external {
        _caller = caller;

        uint storedValue = _caller._balance;
        uint storedGasPrice = _caller._gasPrice;
        _caller._address.transfer(msg.value);
        storedValue += storeValue;
        storedGasPrice += storeGasPrice;
        _caller._balance += 345;
        storedValue += storeValue;
        storedGasPrice += storeGasPrice;

    }


}
