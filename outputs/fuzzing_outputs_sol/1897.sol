pragma solidity ^0.8.0;
contract BurningWithFallbackMutated {
    uint256 private constant _value = 3;
    uint256 private _balance = 345;
    uint256 private _gasPrice;
    constructor() {
        _gasPrice = 4566;
    }
    fallback() external {
        _balance -= 1;
    }
    receive() external payable {}
    fallback() public payable {
        _balance = 4;
    }
    function fallback() external {
        _balance -= 1;
    }
    event TokenPaid();
}
contract ReceivelFallback {
    uint256 private _lastBalance;
    modifier onlyCaller() {
        require(msg.sender == address(this),'msg.sender should be address(this)');
        _;
    }
    constructor() {
        _lastBalance = 1000;
    }
    function payableFallback() external payable {
        _lastBalance += 1;
    }
    function receive(uint256 _amount) external returns (bytes calldata) {
        require(_amount == msg.value, 'wrong amount');
        emit Received(_amount);
        return;
    }
    event Received(uint256 amount);
}

contract Caller {
    ReceivelFallback private _receivelFallback;
    fallback() external {
        _receivelFallback.receive(msg.value);
    }
}
