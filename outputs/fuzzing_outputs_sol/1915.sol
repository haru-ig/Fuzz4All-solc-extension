pragma solidity ^0.8.0;
contract BurningWithFallback {
    uint256 private constant _value = 3;
    uint256 private _balance = _value;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4525;
    }
    receive() external payable {
        _balance += _gasPrice;
    }
    fallback () external {
    }
    event TokenPaid();
}

pragma solidity ^0.8.0;
contract BurningWithFallback {
    uint256 private constant _value = 3;
    uint256 private _balance;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4525;
    }

    receive() external payable {
        require(msg.value >= _value);
        _balance += msg.value;
    }
    fallback () external {
        exit(1);
    }

    function fallbackFunc() public {
        _balance += _gasPrice;
    }
    event TokenPaid();
}
