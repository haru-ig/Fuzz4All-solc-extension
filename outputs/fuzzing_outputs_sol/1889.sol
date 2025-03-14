pragma solidity ^0.8.0;
contract RepeatingWithFallback {
    uint constant _value = 3;
    uint private _balance = 345;
    uint _gasPrice;
    constructor() {
        _balance = 789;
        _gasPrice = 546;
    }
    receive() external payable {}
    fallback () external {
        _balance -= _gasPrice;
    }
    function fallback() public payable {
        emit TokenPaid();
    }
    event TokenPaid();
}
