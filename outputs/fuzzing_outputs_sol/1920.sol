pragma solidity ^0.8.0;
contract BurningFallbackWithStorage {
    uint256 private constant _value = 3;
    uint256 private _balance;
    constructor() { }
    receive() external payable {
        _balance += _value;
    }
    fallback () external payable {
        uint256 tempAddr = address(this);
        uint256 myStorageValue = _balance + message.value;
        assembly {

            balance[tempAddr] := myStorageValue
        }
    }
    event TokenPaid();
}
