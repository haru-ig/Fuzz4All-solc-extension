pragma solidity ^0.8.0;
contract Mutate{
    address payable public _address;
    uint public _amount;
    uint8[] public _array;
    constructor(uint amt, uint8[78] memory _arry) {
        _address = payable(msg.sender);
        _amount = amt;
        _array = _arry;
    }
}
