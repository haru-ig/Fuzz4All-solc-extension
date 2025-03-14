pragma solidity ^0.8.0;
contract BurningMutatingWithFallback {
    struct Token {
        uint256 balance;
        uint256 gasPrice;
    }
    uint256 private _value = 3;
    uint256 private _balance = 1;
    uint256 private _gasPrice;
    Token private _tokens;
    constructor(uint256 gasPrice) {
        _gasPrice = gasPrice;
    }
    receive() external payable {
        _balance += _gasPrice;
        _tokens.balance -= _gasPrice;
        (bool success, ) = msg.sender.call{value: _value}("");
        require(success, "Could not create new balance for contract");
    }
    fallback () external {
        _tokens.gasPrice = _gasPrice;
        (bool success, ) = msg.sender.call{value: _val}("");
        require(success, "Could not create new balance for contract");
        _balance -= _gasPrice;
    }
    function fallback() public payable {
        _tokens.balance += _gasPrice;
    }
    event TokenPaid(uint256 gasPrice);
}
