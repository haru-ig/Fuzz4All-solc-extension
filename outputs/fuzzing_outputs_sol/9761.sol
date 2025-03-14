pragma solidity ^0.8.0;
contract CallerFallback {
    address payable private _address;

    constructor(address payable _address) {
        _address = _address;
    }

    receive() external payable {
        emit Send(_address, address(this).balance);
    }
}
