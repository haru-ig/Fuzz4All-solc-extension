pragma solidity ^0.8.0;
contract MutatedSender {
    using MutatedFallbackRecipient for address payable;
    uint constant _value = 2;
    uint public value = 0;
    constructor(uint gasPrice) {
        if (gasPrice <= 0) {
            _gasPrice = 0;
        } else {
            _gasPrice = gasPrice;
        }
    }
    function deposit(uint gasPrice) {
        if (gasPrice <= 0) {
            _gasPrice = 0;
        } else {
            _gasPrice = gasPrice;
        }
    }
    function withdrawEther(uint gasPrice) returns (uint) {
        _withdraw(gasPrice);
    }
    function _withdraw(uint gasPrice) {
        value -= _value;
        balance -= _value;
        require(balance >= 0, "Sender does not have enough money");
        value = _value;
        (bool success, ) = payable(address(_receiver)).call{ value: balance }("");
        require(success, "Ether transfer failed in _withdraw()");
    }
}

pragma solidity ^0.8.0;
contract LowLevelCall {
    uint constant _value = 2;
    uint public value = 0;
    constructor() {
        value = _value;
    }
    function deposit(uint value) {
        value = value;
        (bool success, ) = address(_receiver).call{ value: value }("");
        require(success, "Ether transfer failed in deposit()");
    }
    function withdrawEther() returns (uint) {
        withdraw{value: value}(address(this));
        return uint(-1);
    }
}

pragma solidity ^0.8.0;
contract LowLevelCallToStorage {
    uint constant _value = 2;
    uint public value = 0;
    constructor() {
        value = _value;
    }
    function deposit(uint value) {
        value = value;
        uint storage result = address(_storage).call{ value: value }("");
        require(result > 0, "Ether transfer failed in deposit()");
    }
}
