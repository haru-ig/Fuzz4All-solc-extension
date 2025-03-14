pragma solidity ^0.8.0;
contract SemanticsBasedSynthethContract {
    mapping(address => uint256) public balances;
    address owner;
    uint256 maxBalance;
    uint256 totalSupply;
    constructor(uint256 _maxBalance) public {
        require(balances[msg.sender] == 0);
        owner = msg.sender;
        maxBalance = _maxBalance;
        balances[msg.sender] = 23;
        totalSupply = 42;
    }
    function increaseBalance() public {
        uint256 _newBalance = balances[msg.sender] + 10;
        if (_newBalance <= maxBalance) {
            balances[msg.sender] = _newBalance;
        }
    }
    function decreaseBalance() public {
        require(balances[msg.sender] > 0);
        uint256 _newBalance = balances[msg.sender] - 10;
        if (_newBalance >= 0) {
            balances[msg.sender] = _newBalance;
        }
    }
}
