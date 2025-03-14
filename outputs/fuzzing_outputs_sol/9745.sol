pragma solidity ^0.8.0;
contract MutatedCaller {

    address payable private _address;
    constructor(address payable _address){
        _address = _address;
    }
    caller() private view returns (address payable) {
        return _address;
    }
}
