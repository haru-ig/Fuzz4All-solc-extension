pragma solidity ^0.8.0;
interface Fallback {
    function receive() payable external;
}
contract CallerFallback {
    uint constant _value = 2;
    uint _balance = 0;
    uint private _gasPrice;
    constructor() {
        _balance = 0;
        _gasPrice = 300;
    }
    fallback() external payable {
        _balance = 1000;
        require(msg.value == _value);
    }
}

pragma solidity ^0.8.0;
contract Caller {
    uint constant _value = 2;
    uint _balance = 0;
    uint private _gasPrice;
    constructor() {
        _balance = 0;
        _gasPrice = 1000;
    }
    function getGasPrice() public view returns (uint) {
        return _gasPrice;
    }
    receive() external payable {}
    fallback() external payable {
        _balance = 1000;
        require(msg.value == _value);
    }
}
contract CallerWithFallback {
    uint constant _value = 2;
    uint _balance = 0;
    uint private _gasPrice;
    uint public _receivedEther;
    constructor() {
        _balance = 0;
        _gasPrice = 1000;
    }
    receive() external payable returns (uint) {
        _balance = 1000;
        return 0;
    }
    fallback() external payable {
        _receivedEther += msg.value;
        _balance += msg.value;
        require(msg.value == _value);
    }
}
